/*
 * buttons.c
 *
 *  Created on: 11 nov. 2019
 *      Author: gabe
 */

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "freertos/FreeRTOS.h"
#include "freertos/event_groups.h"
#include "freertos/timers.h"
#include "driver/timer.h"
#include "esp_log.h"
#include "app_config.h"
#include "buttons.h"

static const char *TAG_BUTTONS = "      rc-buttons";

#define BTN_SCAN_TIMER_GROUP	TIMER_GROUP_1
#define BTN_SCAN_TIMER			TIMER_1
#define BTN_SCAN_TIMERG			TIMERG1
#define BTN_SCAN_TIMER_DIVIDER		8000	// base = 80MHz ; 80MHz/8000 = 10kHz => tick every 100us
#define	BTN_SCAN_TIMER_ALARM_PERIOD	20		// unit: tick, 20 ticks = 2ms, 20000 ticks = 2s

// PUSH
#define BTN_DOWN	0x1
#define BTN_UP		0x2

// ROTARY
#define ROT_NOOP	0x0
#define ROT_RIGHT	0x10
#define ROT_LEFT	0x20

#define ROT_NEUTRAL		0x0
#define ROT_RIGHT_FINAL	0x1
#define ROT_RIGHT_BEGIN	0x2
#define ROT_RIGHT_NEXT	0x3
#define ROT_LEFT_BEGIN	0x4
#define ROT_LEFT_FINAL	0x5
#define ROT_LEFT_NEXT	0x6
const unsigned char rotary_transitions[7][4] = {
	{
		ROT_NEUTRAL,
		ROT_RIGHT_BEGIN,
		ROT_LEFT_BEGIN,
		ROT_NEUTRAL },		// ROT_NEUTRAL
	{
		ROT_RIGHT_NEXT,
		ROT_NEUTRAL,
		ROT_RIGHT_FINAL,
		ROT_NEUTRAL | ROT_RIGHT },	// ROT_RIGHT_FINAL
	{
		ROT_RIGHT_NEXT,
		ROT_RIGHT_BEGIN,
		ROT_NEUTRAL,
		ROT_NEUTRAL },				// ROT_RIGHT_BEGIN
	{
		ROT_RIGHT_NEXT,
		ROT_RIGHT_BEGIN,
		ROT_RIGHT_FINAL,
		ROT_NEUTRAL },			// ROT_RIGHT_NEXT
	{
		ROT_LEFT_NEXT,
		ROT_NEUTRAL,
		ROT_LEFT_BEGIN,
		ROT_NEUTRAL },				// ROT_LEFT_BEGIN
	{
		ROT_LEFT_NEXT,
		ROT_LEFT_FINAL,
		ROT_NEUTRAL,
		ROT_NEUTRAL | ROT_LEFT },		// ROT_LEFT_FINAL
	{
		ROT_LEFT_NEXT,
		ROT_LEFT_FINAL,
		ROT_LEFT_BEGIN,
		ROT_NEUTRAL }, };			// ROT_LEFT_NEXT

volatile unsigned char rotary_state = ROT_NEUTRAL;

static portMUX_TYPE xBtnScanIsrMutex = portMUX_INITIALIZER_UNLOCKED
;

static void update_button(button_t *d) {
	d->history = (d->history << 1) | gpio_get_level(d->gpio_num);
}

#define MASK   0b1111000000111111
static bool button_rose(button_t *d) {
	if ((d->history & MASK) == 0b0000000000111111) {
		d->history = 0xffff;
		return 1;
	}
	return 0;
}
static bool button_fell(button_t *d) {
	if ((d->history & MASK) == 0b1111000000000000) {
		d->history = 0x0000;
		return 1;
	}
	return 0;
}
//static bool button_down(debounce_t *d) {
//	if (d->inverted)
//		return button_fell(d);
//	return button_rose(d);
//}
static bool button_up(button_t *d) {
	if (d->active_high)
		return button_rose(d);
	return button_fell(d);
}

static TaskHandle_t xBtnScanHandlerTask = NULL;

// Button scan result => which buttons were clicked ?
static EventGroupHandle_t xBtnScanEventGroup = NULL;

button_t* configure_button(char *name, gpio_num_t gpio_num, bool active_high, bool enablePullup, bool enablePulldown, UBaseType_t event_mask) {

	ESP_LOGI(TAG_BUTTONS, "create push button. name: %s, gpio num: %d", name, gpio_num);

	button_t *button = malloc(sizeof(button_t));

	button->name = name;
	button->gpio_num = gpio_num;
	button->active_high = active_high;
	button->history = button->active_high ? 0x0000 : 0xFFFF;
	button->event_mask = event_mask;

	configure_pin(button->gpio_num, false, false);

	return button;
}

void init_buttons() {

	int i = 0;
	// push
	buttons[i++] = configure_button("red", GPIO_BTN_RED, true, false, false, EVT_MASK_BTN_RED);
	buttons[i++] = configure_button("green", GPIO_BTN_GREEN, true, false, false, EVT_MASK_BTN_GREEN);
	buttons[i++] = configure_button("yellow", GPIO_BTN_YELLOW, true, false, false, EVT_MASK_BTN_YELLOW);
	buttons[i++] = configure_button("blue", GPIO_BTN_BLUE, true, false, false, EVT_MASK_BTN_BLUE);
	buttons[i++] = configure_button("white", GPIO_BTN_WHITE, true, false, false, EVT_MASK_BTN_WHITE);

	// rotary
	buttons[i++] = configure_button("rot. push", GPIO_BTN_ROT, false, false, false, EVT_MASK_BTN_ROT);
	configure_pin(GPIO_BTN_ROT_1, false, false);
	configure_pin(GPIO_BTN_ROT_2, false, false);
}

static void IRAM_ATTR btn_scan_isr_handler(void *arg) {
	BaseType_t xHigherPriorityTaskWoken;
	xHigherPriorityTaskWoken = pdFALSE;
	uint32_t events = 0;

	taskENTER_CRITICAL_ISR(&xBtnScanIsrMutex);

	// ROTARY check
	rotary_state = rotary_transitions[rotary_state & 0xf][((gpio_get_level(GPIO_BTN_ROT_1)) << 1) | gpio_get_level(GPIO_BTN_ROT_2)];
	unsigned char rotary_final_state = rotary_state & 0x30;
	if (rotary_final_state == ROT_RIGHT) {
		events |= EVT_MASK_BTN_ROT_R;
	} else if (rotary_final_state == ROT_LEFT) {
		events |= EVT_MASK_BTN_ROT_L;
	}

	// PUSH
	for (int idx = 0; idx < BTN_NUMBER; idx++) {
		update_button(buttons[idx]);
		if (button_up(buttons[idx])) {
			events |= buttons[idx]->event_mask;
		}
	}

	taskEXIT_CRITICAL_ISR(&xBtnScanIsrMutex);

	// clear interrupt and re-enable alarm
	BTN_SCAN_TIMERG.int_clr_timers.t1 = 1;
	BTN_SCAN_TIMERG.hw_timer[1].config.alarm_en = TIMER_ALARM_EN;

	// set events
	if (events != 0) {
		xEventGroupSetBitsFromISR(xBtnScanEventGroup, events, &xHigherPriorityTaskWoken);
		portYIELD_FROM_ISR();
	}

}

void init_btn_scan_timer() {
	timer_config_t config;
	config.divider = BTN_SCAN_TIMER_DIVIDER;
	config.counter_dir = TIMER_COUNT_UP;
	config.counter_en = TIMER_PAUSE;
	config.alarm_en = TIMER_ALARM_EN;
	config.intr_type = TIMER_INTR_LEVEL;
	config.auto_reload = TIMER_AUTORELOAD_EN;
	ESP_LOGI(TAG_BUTTONS, "   . init");
	ESP_ERROR_CHECK(timer_init(BTN_SCAN_TIMER_GROUP, BTN_SCAN_TIMER, &config));
	ESP_LOGI(TAG_BUTTONS, "   . counter value");
	ESP_ERROR_CHECK(timer_set_counter_value(BTN_SCAN_TIMER_GROUP, BTN_SCAN_TIMER, 0x00000000ULL));
	ESP_LOGI(TAG_BUTTONS, "   . set alarm value");
	ESP_ERROR_CHECK(timer_set_alarm_value(BTN_SCAN_TIMER_GROUP, BTN_SCAN_TIMER, BTN_SCAN_TIMER_ALARM_PERIOD));
	ESP_LOGI(TAG_BUTTONS, "   . enable intr");
	ESP_ERROR_CHECK(timer_enable_intr(BTN_SCAN_TIMER_GROUP, BTN_SCAN_TIMER));
	ESP_LOGI(TAG_BUTTONS, "   . isr register");
	ESP_ERROR_CHECK(timer_isr_register(BTN_SCAN_TIMER_GROUP, BTN_SCAN_TIMER, btn_scan_isr_handler, NULL, ESP_INTR_FLAG_IRAM, NULL));
//	ESP_LOGI(TAG_BUTTONS, "   . NO start <<<<<--------------------- ATTENTION");
	ESP_LOGI(TAG_BUTTONS, "   . start");
	ESP_ERROR_CHECK(timer_start(BTN_SCAN_TIMER_GROUP, BTN_SCAN_TIMER));
}

void init_btn_scan_event_group() {
	xBtnScanEventGroup = xEventGroupCreate();
	configASSERT(xBtnScanEventGroup);
}

static void btn_scan_task(void *pvParameters) {
	EventBits_t xBtnScanEventGroupValue;
	const TickType_t xMaxExpectedBlockTime = pdMS_TO_TICKS(20);

	for (;;) {

		xBtnScanEventGroupValue = xEventGroupWaitBits(xBtnScanEventGroup, xBtnScanBitsToWaitFor, pdTRUE, pdFALSE, xMaxExpectedBlockTime);

		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_RED) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "R");
		}
		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_GREEN) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "G");
		}
		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_YELLOW) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "Y");
		}
		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_BLUE) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "B");
		}
		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_ROT) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "Rot");
		}
		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_ROT_L) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "<-");
		}
		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_ROT_R) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "->");
		}
		if ((xBtnScanEventGroupValue & EVT_MASK_BTN_WHITE) != 0) {
			ESP_EARLY_LOGD(TAG_BUTTONS, "W");
		}

		if (xBtnScanEventGroupValue > 0) {
			xTimerReset(xHibernationTimer, 0);
		}

	}
}

void init_btn_scan_task() {
	xTaskCreate(btn_scan_task, "btn_scan_task", 2048, NULL, 5, &xBtnScanHandlerTask);
	configASSERT(xBtnScanHandlerTask);
}


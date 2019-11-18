/*
 * power_management.c
 *
 *  Created on: 11 nov. 2019
 *      Author: gabe
 */

#include "sleep.h"
#include "app_config.h"
#include "esp_sleep.h"
#include "esp_log.h"
#include "driver/rtc_io.h"

static const char *TAG_SLEEP = "        rc-sleep";

void go_to_sleep() {
	ESP_LOGI(TAG_SLEEP, "Enabling EXT1 wakeup by any of:");
	uint64_t pins_mask = 0ULL;
	for (int i = 0; i < BTN_NUMBER; ++i) {
		button_t *button = buttons[i];
		if (button->active_high) {
			ESP_LOGI(TAG_SLEEP, " - button %s", button->name);
			pins_mask |= 1ULL << button->gpio_num;
		}
	}
	ESP_LOGI(TAG_SLEEP, " - shake sensor");
	pins_mask |= 1ULL << GPIO_SENSOR_SHAKE;
	ESP_ERROR_CHECK(esp_sleep_enable_ext1_wakeup(pins_mask, ESP_EXT1_WAKEUP_ANY_HIGH));

	// Isolate GPIO12 pin from external circuits. This is needed for modules
	// which have an external pull-up resistor on GPIO12 (such as ESP32-WROVER)
	// to minimize current consumption.
	rtc_gpio_isolate(GPIO_NUM_12);

	ESP_LOGI(TAG_SLEEP, "Entering deep sleep");

	ESP_ERROR_CHECK(esp_sleep_pd_config(ESP_PD_DOMAIN_XTAL, ESP_PD_OPTION_OFF));
	ESP_ERROR_CHECK(esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_PERIPH, ESP_PD_OPTION_OFF));
	ESP_ERROR_CHECK(esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_FAST_MEM, ESP_PD_OPTION_OFF));
	ESP_ERROR_CHECK(esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_SLOW_MEM, ESP_PD_OPTION_OFF));

	esp_deep_sleep_start();
}

void waking_up() {

	// TODO : pour tous les boutons
//	rtc_gpio_deinit(gpio_num)

	switch (esp_sleep_get_wakeup_cause()) {
	case ESP_SLEEP_WAKEUP_EXT1: {
		uint64_t wakeup_pin_mask = esp_sleep_get_ext1_wakeup_status();
		if (wakeup_pin_mask != 0) {
			int pin = __builtin_ffsll(wakeup_pin_mask) - 1;
			ESP_LOGI(TAG_SLEEP, "Wake up from GPIO %d", pin);
		} else {
			ESP_LOGI(TAG_SLEEP, "Wake up from GPIO");
		}
		break;
	}
	default:
		ESP_LOGI(TAG_SLEEP, "Wake up cause: %d\n", esp_sleep_get_wakeup_cause());
	}
}

void init_hibernation() {
	xHibernationTimer = xTimerCreate("HibernationTimer", pdMS_TO_TICKS(INACTIVITY_BEFORE_SLEEP), pdTRUE, 0, go_to_sleep);
	xTimerStart(xHibernationTimer, 0);

	//TODO : création d'une tache qui reçoit des notif pour reset le timer
}


#include <stdio.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "esp_log.h"

#include "app_config.h"
#include "battery.h"
#include "buttons.h"
#include "led_multi.h"
#include "screen.h"
#include "shake.h"
#include "sleep.h"

static const char *TAG = "  remote-control"; // ESP_LOG*

void app_main() {

	ESP_LOGI(TAG, "=================================== APP MAIN ===================================");

	// Buttons
	ESP_LOGI(TAG, "BUTTONS");
	ESP_LOGI(TAG, " - create button scan event group");
	init_btn_scan_event_group();
	ESP_LOGI(TAG, " - configure buttons");
	init_buttons();
	ESP_LOGI(TAG, " - create button scan task");
	init_btn_scan_task();
	ESP_LOGI(TAG, " - create button scan hardware timer");
	init_btn_scan_timer();

	// Battery
	ESP_LOGI(TAG, "BATTERY");
	ESP_LOGI(TAG, " - configure battery check");
	init_battery();
	ESP_LOGI(TAG, " - create battery check timer");
	configASSERT(init_battery_check_timer());

	for (;;) {
		vTaskDelay(1000 / portTICK_PERIOD_MS);
	}

}

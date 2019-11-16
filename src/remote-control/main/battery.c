/*
 * battery.c
 *
 *  Created on: 11 nov. 2019
 *      Author: gabe
 */

#include <stdio.h>
#include <stdlib.h>
#include "battery.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/timers.h"
#include "driver/gpio.h"
#include "driver/adc.h"
#include "esp_adc_cal.h"
#include "soc/adc_channel.h"
#include "esp_log.h"

static const char *TAG_BATTERY = "      rc-battery";

#define BATTERY_CHECK_PERIOD	10000 // millis

#define DEFAULT_VREF	1100	//Use adc2_vref_to_gpio() to obtain a better estimate
#define NO_OF_SAMPLES	64		//Multisampling

static esp_adc_cal_characteristics_t *adc_chars;
static const adc_channel_t adc1_channel = ADC1_GPIO35_CHANNEL; //ADC1_CHANNEL_7;     //GPIO35 if ADC1, GPIO27 if ADC2
static const adc_atten_t atten = ADC_ATTEN_DB_11;
static const adc_bits_width_t width = ADC_WIDTH_BIT_12;

static void check_efuse() {
	//Check TP is burned into eFuse
	if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_TP) == ESP_OK) {
		ESP_LOGI(TAG_BATTERY, "eFuse Two Point: Supported");
	} else {
		ESP_LOGI(TAG_BATTERY, "eFuse Two Point: NOT supported");
	}

	//Check Vref is burned into eFuse
	if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_VREF) == ESP_OK) {
		ESP_LOGI(TAG_BATTERY, "eFuse Vref: Supported");
	} else {
		ESP_LOGI(TAG_BATTERY, "eFuse Vref: NOT supported");
	}
}

static void print_char_val_type(esp_adc_cal_value_t val_type) {
	if (val_type == ESP_ADC_CAL_VAL_EFUSE_TP) {
		ESP_LOGI(TAG_BATTERY, "Characterized using Two Point Value");
	} else if (val_type == ESP_ADC_CAL_VAL_EFUSE_VREF) {
		ESP_LOGI(TAG_BATTERY, "Characterized using eFuse Vref");
	} else {
		ESP_LOGI(TAG_BATTERY, "Characterized using Default Vref");
	}
}

static uint32_t get_battery_voltage() {
	uint32_t adc_reading = 0;
	//Multisampling
	for (int i = 0; i < NO_OF_SAMPLES; i++) {
		adc_reading += adc1_get_raw(adc1_channel);
	}
	adc_reading /= NO_OF_SAMPLES;
	//Convert adc_reading to voltage in mV
//	ESP_LOGI(TAG_BATTERY, "Raw: %d", adc_reading);
	uint32_t voltage = esp_adc_cal_raw_to_voltage(adc_reading, adc_chars);
	return voltage * 2;	// x2 car pont diviseur de tension avec R1 = R2 = 100k, soit division par 2
}

static void prvBatteryVoltageCheckTimerCallback(TimerHandle_t xTimer) {
	ESP_EARLY_LOGI(TAG_BATTERY, "Voltage: %dmV", get_battery_voltage());
}

void init_battery() {
	ESP_LOGI(TAG_BATTERY, "   . check efuse");
	//Check if Two Point or Vref are burned into eFuse
	check_efuse();

	//Configure ADC
	ESP_LOGI(TAG_BATTERY, "   . configure ADC");
	adc1_config_width(ADC_WIDTH_BIT_12);
	adc1_config_channel_atten(adc1_channel, atten);

	//Characterize ADC
	ESP_LOGI(TAG_BATTERY, "   . characterize ADC");
	adc_chars = calloc(1, sizeof(esp_adc_cal_characteristics_t));
	esp_adc_cal_value_t val_type = esp_adc_cal_characterize(ADC_UNIT_1, atten, width, DEFAULT_VREF, adc_chars);
	print_char_val_type(val_type);
}

BaseType_t init_battery_check_timer() {
	ESP_LOGI(TAG_BATTERY, "   . create timer");
	TimerHandle_t xBatteryVoltageCheckTimer = xTimerCreate("BatteryVoltageCheckTimer", pdMS_TO_TICKS(10000), pdTRUE, 0, prvBatteryVoltageCheckTimerCallback);
	if (xBatteryVoltageCheckTimer != NULL) {
		ESP_LOGI(TAG_BATTERY, "   . start timer");
		BaseType_t xBAtteryVoltageCheckTimerStarted = xTimerStart(xBatteryVoltageCheckTimer, 0);
		if (xBAtteryVoltageCheckTimerStarted == pdPASS) {
			return pdPASS;
		}
	}
	return pdFAIL;
}


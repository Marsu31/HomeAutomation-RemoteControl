/*
 * app_config.c
 *
 *  Created on: 15 nov. 2019
 *      Author: gabe
 */

#include "app_config.h"

void configure_pin(gpio_num_t gpio_num, bool enablePullup, bool enablePulldown) {
	gpio_config_t gpio_conf;
	gpio_conf.pin_bit_mask = 1ULL << gpio_num;
	gpio_conf.mode = GPIO_MODE_INPUT;
	gpio_conf.pull_up_en = enablePullup;
	gpio_conf.pull_down_en = enablePulldown;
	gpio_conf.intr_type = GPIO_PIN_INTR_DISABLE;
	ESP_ERROR_CHECK(gpio_config(&gpio_conf));
}

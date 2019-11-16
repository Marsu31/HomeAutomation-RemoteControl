/*
 * app_config.h
 *
 *  Created on: 13 nov. 2019
 *      Author: gabe
 */

#ifndef MAIN_INCLUDE_APP_CONFIG_H_
#define MAIN_INCLUDE_APP_CONFIG_H_

#include <stdbool.h>
#include "freertos/FreeRTOS.h"
#include "freertos/event_groups.h"
#include "driver/gpio.h"

// GPIOs

#define GPIO_LEVEL_LOW		0
#define GPIO_LEVEL_HIGH		1

// Buttons (push, rotative)
#define GPIO_BTN_RED		GPIO_NUM_32
#define GPIO_BTN_GREEN     	GPIO_NUM_33
#define GPIO_BTN_YELLOW   	GPIO_NUM_25
#define GPIO_BTN_BLUE     	GPIO_NUM_26
#define GPIO_BTN_ROT     	GPIO_NUM_34
#define GPIO_BTN_ROT_1     	GPIO_NUM_39
#define GPIO_BTN_ROT_2    	GPIO_NUM_36
#define GPIO_BTN_WHITE     	GPIO_NUM_15

// Shake sensor
#define GPIO_SENSOR_SHAKE	GPIO_NUM_13

// Multicolors LED
#define GPIO_LED_MULTI_RED		GPIO_NUM_27
#define GPIO_LED_MULTI_GREEN	GPIO_NUM_14
#define GPIO_LED_MULTI_BLUE		GPIO_NUM_12

void configure_pin(gpio_num_t gpio_num, bool enablePullup, bool enablePulldown);

#endif /* MAIN_INCLUDE_APP_CONFIG_H_ */

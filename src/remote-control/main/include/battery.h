/*
 * battery.h
 *
 *  Created on: 11 nov. 2019
 *      Author: gabe
 */

#ifndef MAIN_INCLUDE_BATTERY_H_
#define MAIN_INCLUDE_BATTERY_H_

#include "freertos/FreeRTOS.h"

void init_battery();

BaseType_t init_battery_check_timer();

#endif /* MAIN_INCLUDE_BATTERY_H_ */

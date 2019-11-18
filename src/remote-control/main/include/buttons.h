/*
 * buttons.h
 *
 *  Created on: 11 nov. 2019
 *      Author: gabe
 */

#ifndef MAIN_INCLUDE_BUTTONS_H_
#define MAIN_INCLUDE_BUTTONS_H_

#include "freertos/FreeRTOS.h"
#include "freertos/event_groups.h"
#include "driver/gpio.h"

#define BTN_SCAN_PERIOD	20 // millis

#define EVT_MASK_BTN_RED	(1UL << 0UL)
#define EVT_MASK_BTN_GREEN	(1UL << 1UL)
#define EVT_MASK_BTN_YELLOW	(1UL << 2UL)
#define EVT_MASK_BTN_BLUE	(1UL << 3UL)
#define EVT_MASK_BTN_ROT	(1UL << 4UL)
#define EVT_MASK_BTN_ROT_L	(1UL << 5UL)
#define EVT_MASK_BTN_ROT_R	(1UL << 6UL)
#define EVT_MASK_BTN_WHITE	(1UL << 7UL)

static const EventBits_t xBtnScanBitsToWaitFor = (EVT_MASK_BTN_RED | EVT_MASK_BTN_GREEN | EVT_MASK_BTN_YELLOW | EVT_MASK_BTN_BLUE | EVT_MASK_BTN_ROT | EVT_MASK_BTN_ROT_L | EVT_MASK_BTN_ROT_R
		| EVT_MASK_BTN_WHITE);

void init_buttons();

void init_btn_scan_event_group();

void init_btn_scan_timer();

void init_btn_scan_task();

#endif /* MAIN_INCLUDE_BUTTONS_H_ */

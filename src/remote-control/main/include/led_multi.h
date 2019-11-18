/*
 * led_multi.h
 *
 *  Created on: 11 nov. 2019
 *      Author: Marsu31
 */

#ifndef MAIN_INCLUDE_LED_MULTI_H_
#define MAIN_INCLUDE_LED_MULTI_H_

#include <stdio.h>

// LED MULTI calibration
#define LED_HUE_RED			0		//   0 (/360)
#define LED_HUE_ORANGE		60		//  14 (/360)
#define LED_HUE_YELLOW		160		//  37 (/360)
#define LED_HUE_GREEN		480		// 112 (/360)
#define LED_HUE_CYAN		650		// 152 (/360)
#define LED_HUE_BLUE		840		// 197 (/360)
#define LED_HUE_DARK_BLUE	1000	// 234 (/360)
#define LED_HUE_VIOLET		1100	// 257 (/360)
#define LED_HUE_MAGENTA		1200	// 281 (/360)
#define LED_HUE_PINK		1350	// 316 (/360)

void init_led_multi();

void led_multi_set_color(uint16_t hue);

#endif /* MAIN_INCLUDE_LED_MULTI_H_ */

/*
 * led_multi.c
 *
 *  Created on: 11 nov. 2019
 *      Author: gabe
 */

#include "led_multi.h"
#include "esp_log.h"
#include "driver/ledc.h"
#include "lib_rgb/ESPxRGB.h"

#define LED_MULTI_R	27
#define LED_MULTI_G	14
#define LED_MULTI_B	12

#define LEDC_LS_TIMER          LEDC_TIMER_0
#define LEDC_LS_MODE           LEDC_LOW_SPEED_MODE

#define LEDC_LS_CH_R_GPIO       (27)
#define LEDC_LS_CH_R_CHANNEL    LEDC_CHANNEL_0
#define LEDC_LS_CH_G_GPIO       (14)
#define LEDC_LS_CH_G_CHANNEL    LEDC_CHANNEL_1
#define LEDC_LS_CH_B_GPIO       (12)
#define LEDC_LS_CH_B_CHANNEL    LEDC_CHANNEL_2

//#define LEDC_TEST_CH_NUM       (4)
#define LEDC_TEST_CH_NUM       (3)
#define LEDC_TEST_DUTY         (8000)
#define LEDC_TEST_FADE_TIME    (3000)

#define LEDC_DUTY_ZERO	(8192)
#define LEDC_HPOINT		0

static const char *TAG_LED_MULTI = "    rc-led_multi";

static const ledc_channel_config_t ledc_channel_r = {
	.channel = LEDC_LS_CH_R_CHANNEL,
	.gpio_num = LEDC_LS_CH_R_GPIO,
	.duty = LEDC_DUTY_ZERO,
	.speed_mode = LEDC_LS_MODE,
	.hpoint = LEDC_HPOINT,
	.timer_sel = LEDC_LS_TIMER };

static const ledc_channel_config_t ledc_channel_g = {
	.channel = LEDC_LS_CH_G_CHANNEL,
	.gpio_num = LEDC_LS_CH_G_GPIO,
	.duty = LEDC_DUTY_ZERO,
	.speed_mode = LEDC_LS_MODE,
	.hpoint = LEDC_HPOINT,
	.timer_sel = LEDC_LS_TIMER };

static const ledc_channel_config_t ledc_channel_b = {
	.channel = LEDC_LS_CH_B_CHANNEL,
	.gpio_num = LEDC_LS_CH_B_GPIO,
	.duty = LEDC_DUTY_ZERO,
	.speed_mode = LEDC_LS_MODE,
	.hpoint = LEDC_HPOINT,
	.timer_sel = LEDC_LS_TIMER };

void init_led_multi() {

	ledc_timer_config_t ledc_timer = {
		.duty_resolution = LEDC_TIMER_13_BIT, // resolution of PWM duty
		.freq_hz = 5000,                      // frequency of PWM signal
		.speed_mode = LEDC_LS_MODE,           // timer mode
		.timer_num = LEDC_LS_TIMER,            // timer index
		.clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
			};
	ledc_timer_config(&ledc_timer);

	ledc_channel_config(&ledc_channel_r);
	ledc_channel_config(&ledc_channel_g);
	ledc_channel_config(&ledc_channel_b);

	ledc_fade_func_install(0);
}

void led_multi_set_color(uint16_t hue) {
	uint8_t r, g, b;
	xhsv2rgb8(hue, 255, 255, &r, &g, &b);
	ESP_LOGI(TAG_LED_MULTI, "Color = %4d (/1535), %3ld (/360) R=%3d, G=%3d, B=%3d", hue, hue * 72UL / 307, r, g, b);
	ledc_set_duty_and_update(ledc_channel_r.speed_mode, ledc_channel_r.channel, LEDC_DUTY_ZERO - r, 0);
	ledc_set_duty_and_update(ledc_channel_g.speed_mode, ledc_channel_g.channel, LEDC_DUTY_ZERO - g, 0);
	ledc_set_duty_and_update(ledc_channel_b.speed_mode, ledc_channel_b.channel, LEDC_DUTY_ZERO - b, 0);
}


idf_component_register(
	SRCS "main.c" "app_config.c" "battery.c" "buttons.c" "led_multi.c" "screen.c" "shake.c" "sleep.c" "lib_rgb/xhsv2rgb.S" "lib_rgb/xrgb2rgbw.S" "lib_rgb/xrgbgamma.S" "lib_rgb/xtables.S"
	INCLUDE_DIRS "include" "lib_rgb"
)
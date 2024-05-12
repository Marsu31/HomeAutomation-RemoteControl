/*
 * shake.c
 *
 *  Created on: 11 nov. 2019
 *      Author: gabe
 */

#include <stdio.h>
#include "shake.h"
#include "app_config.h"

void init_shake_sensor() {
	configure_pin(GPIO_SENSOR_SHAKE, false, false);

	// TODO : interrupt qui envoie une notif à la tache
}

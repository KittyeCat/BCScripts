#include <stdbool.h>

#include "hardware/gpio.h"
#include "hardware/structs/sio.h"
#include "pico/stdlib.h"

int main(void)
{
	for (int i = 0; i < 8; i++) {
		gpio_init(i);					//initialise GPIO pins 0-7
		gpio_set_dir(i, GPIO_OUT);		//set each pin to OUTPUT
	}
	gpio_put_all(0);					//set all outputs to 0

	for (;;) {
		gpio_set_mask(67);				//0b01000011
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(20);				//0b00010100
		gpio_clr_mask(3);				//0b00000011
		sleep_us(100);				//
		gpio_set_mask(2);				//0b00000010
		gpio_clr_mask(16);				//0b00010000
		sleep_us(100);				//
		gpio_set_mask(57);				//0b00111001
		gpio_clr_mask(4);				//0b00000100
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(25);				//0b00011001
		sleep_us(100);				//
		gpio_set_mask(5);				//0b00000101
		gpio_clr_mask(2);				//0b00000010
		sleep_us(100);				//
		gpio_set_mask(18);				//0b00010010
		gpio_clr_mask(65);				//0b01000001
		sleep_us(100);				//
		gpio_set_mask(1);				//0b00000001
		gpio_clr_mask(2);				//0b00000010
		sleep_us(100);				//
		gpio_set_mask(64);				//0b01000000
		gpio_clr_mask(17);				//0b00010001
		sleep_us(100);				//
		gpio_set_mask(2);				//0b00000010
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(1);				//0b00000001
		gpio_clr_mask(6);				//0b00000110
		sleep_us(100);				//
		gpio_set_mask(18);				//0b00010010
		gpio_clr_mask(65);				//0b01000001
		sleep_us(100);				//
		gpio_set_mask(1);				//0b00000001
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(4);				//0b00000100
		gpio_clr_mask(2);				//0b00000010
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(64);				//0b01000000
		gpio_clr_mask(16);				//0b00010000
		sleep_us(100);				//
		gpio_set_mask(16);				//0b00010000
		gpio_clr_mask(64);				//0b01000000
		sleep_us(100);				//
		gpio_set_mask(2);				//0b00000010
		gpio_clr_mask(4);				//0b00000100
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(3);				//0b00000011
		sleep_us(100);				//
		gpio_set_mask(9);				//0b00001001
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(1);				//0b00000001
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(8);				//0b00001000
		sleep_us(100);				//
		gpio_set_mask(8);				//0b00001000
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(65);				//0b01000001
		gpio_clr_mask(24);				//0b00011000
		sleep_us(100);				//
		gpio_set_mask(22);				//0b00010110
		gpio_clr_mask(64);				//0b01000000
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(5);				//0b00000101
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(2);				//0b00000010
		sleep_us(100);				//
		gpio_set_mask(65);				//0b01000001
		gpio_clr_mask(16);				//0b00010000
		sleep_us(100);				//
		gpio_set_mask(22);				//0b00010110
		gpio_clr_mask(65);				//0b01000001
		sleep_us(100);				//
		gpio_set_mask(1);				//0b00000001
		gpio_clr_mask(6);				//0b00000110
		sleep_us(100);				//
		gpio_set_mask(4);				//0b00000100
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(66);				//0b01000010
		gpio_clr_mask(21);				//0b00010101
		sleep_us(100);				//
		gpio_set_mask(1);				//0b00000001
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(0);				//0b00000000
		gpio_clr_mask(2);				//0b00000010
		sleep_us(100);				//
		gpio_set_mask(24);				//0b00011000
		gpio_clr_mask(65);				//0b01000001
		sleep_us(100);				//
		gpio_set_mask(67);				//0b01000011
		gpio_clr_mask(24);				//0b00011000
		sleep_us(100);				//
		gpio_set_mask(24);				//0b00011000
		gpio_clr_mask(67);				//0b01000011
		sleep_us(100);				//
		gpio_set_mask(2);				//0b00000010
		gpio_clr_mask(8);				//0b00001000
		sleep_us(100);				//
		gpio_set_mask(65);				//0b01000001
		gpio_clr_mask(18);				//0b00010010
		sleep_us(100);				//
		gpio_set_mask(16);				//0b00010000
		gpio_clr_mask(64);				//0b01000000
		sleep_us(100);				//
		gpio_set_mask(2);				//0b00000010
		gpio_clr_mask(0);				//0b00000000
		sleep_us(100);				//
		gpio_set_mask(68);				//0b01000100
		gpio_clr_mask(19);				//0b00010011
		sleep_us(100);				//
		gpio_set_mask(19);				//0b00010011
		gpio_clr_mask(64);				//0b01000000
		sleep_us(100);				//
		gpio_set_mask(72);				//0b01001000
		gpio_clr_mask(2);				//0b00000010
		sleep_us(100);				//
		gpio_set_mask(2);				//0b00000010
		gpio_clr_mask(117);				//0b01110101
		sleep_us(100);				//
				//
		gpio_put_all(0);				//
		sleep_ms(500);
	}

	return 0;
}
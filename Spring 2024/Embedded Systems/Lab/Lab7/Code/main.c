#include "main.h"

#define RESULT 0x00
#define CONFIGURATION 0x01
#define LOW_LIMIT 0x02
#define HIGH_LIMIT 0x03
#define MANUFACTURER_ID 0x7E
#define DEVICE_ID 0x7F
#define SENSOR_GND 0x44

/**
 * main.c
 */
int main(void)
{
	WDTCTL = WDTPW | WDTHOLD; // stop watchdog timer
	PM5CTL0 &= ~LOCKLPM5;	  // Enable the GPIO pins

	Initialize_UART();
	Initialize_I2C();

	uint16_t manufacturerId = 0, deviceId = 0, lux = 0;
	//i2c_read_word(0x44, 0x7E, &manufacturerId);
	//i2c_read_word(0x44, 0x7F, &deviceId);

	// configure the sensor
	// RN = 0b0111
	// CT = 0
	// M = 0b11
	// ME = 1
	uint8_t RN = 0b0111;
	uint8_t CT = 0;
	uint8_t M = 0b11;
	uint8_t ME = 0b1;
	uint16_t configurationRegister = 0b0111011000000100; // (RN << 15) | (CT << 11) | (M << 10) | (ME << 2);

	uart_write_string("Configuration Register value: ");
	uart_write_uint16(configurationRegister);
	uart_write_string("\r\n");
	__delay_cycles(4e6);

	unsigned int sensorconfig;
	sensorconfig = 0b0111011000000100; // In hex this is 0x7604
	i2c_write_word(SENSOR_GND, CONFIGURATION, sensorconfig);

	unsigned int data;
	uint16_t i = 0;
	for (;;)
	{
		uart_write_uint16(++i);
		uart_write_string(" -> Manufacturer Id: ");
		uart_write_nstring(&manufacturerId, 2);
		uart_write_string(", Device Id: ");
		uart_write_uint16(deviceId);
		uart_write_string(", LUX: ");
		
		i2c_read_word(SENSOR_GND, RESULT, &data);
    	uart_write_uint16(1.28 * data);

		uart_write_string("\r\n");
		__delay_cycles(1e6);
	}

	return 0;
}

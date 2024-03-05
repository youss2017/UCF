#include <msp430fr6989.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include <string.h>
#include "images.h"

#define BUTTON1 BIT1
#define BUTTON2 BIT2
#define redLED BIT0	  // Red LED at P1.0
#define greenLED BIT7 // Green LED at P9.7

#define FLAGS UCA1IFG	   // Contains the transmit & receive flags
#define RXFLAG UCRXIFG	   // Receive flag
#define TXFLAG UCTXIFG	   // Transmit flag
#define TXBUFFER UCA1TXBUF // Transmit buffer
#define RXBUFFER UCA1RXBUF // Receive buffer

void Initialize_UART(void);
void Initialize_UART_2(void);
void uart_write_char(unsigned char ch);
unsigned char uart_read_char(void);
void LightRedLED(bool state);
void LightGreenLED(bool state);
void ToggleRedLED();
void ToggleGreenLED();
void uart_write_uint16(unsigned int n);
void uart_write_string(const char *str);
void config_ACLK_to_32KHz_crystal();

/**
 * main.c
 */
void Part1Demo()
{
	// char data[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
	int i = 0;
	for (;;)
	{
		for (i = 0; i < 10; i++)
		{
			uart_write_string("Hello from MSP430, UART Function\r\n");
			uart_write_uint16((uint16_t)(1 << i + i));
			uart_write_string("\r\n");
		}
	}
}

void terminal_clear()
{
	uart_write_string("\033[2J");
}

void terminal_reset_cursor()
{
	uart_write_string("\033[1;1H");
}

void terminal_move_up(uint8_t count)
{
	while (count > 0)
	{
		uart_write_string("\033[1A");
		count--;
	}
}

void terminal_show_cursor(uint8_t show)
{
#define CSI "\e["
	if (show)
	{
		uart_write_string(CSI "?25h");
	}
	else
	{
		uart_write_string(CSI "?25l");
	}
#undef CSI
}

void terminal_display_takeoff()
{
	char hexBytes[] = {0xf0, 0x9f, 0x9b, 0xab};
	uart_write_char(hexBytes[0]);
	uart_write_char(hexBytes[1]);
	uart_write_char(hexBytes[2]);
	uart_write_char(hexBytes[3]);
}

void terminal_display_logo()
{
	unsigned char hexBytes[] = {0xe2, 0x9c, 0x88, 0xef, 0xb8, 0x8f};
	uart_write_char(hexBytes[0]);
	uart_write_char(hexBytes[1]);
	uart_write_char(hexBytes[2]);
	uart_write_char(hexBytes[3]);
	uart_write_char(hexBytes[4]);
	uart_write_char(hexBytes[5]);
}

void application_display()
{
	terminal_clear();
	terminal_reset_cursor();
	terminal_show_cursor(false);
	uart_write_string("ORLANDO EXECUTIVE AIRPORT RUNWAY CONTROL ");
	terminal_display_logo();
	uart_write_string("\r\n\r\n");
	uart_write_string("             \tRunway 1\tRunway 2\r\n");
	uart_write_string("Request (RQ):\t  1\t\t  3\r\n");
	uart_write_string("Forfeit (FF):\t  7\t\t  9\r\n");
	uart_write_string("\n\n\n\n");
	uart_write_string("------------\t\t\t------------\r\n");
	uart_write_string("  RUNWAY 1\t\t\t  RUNWAY 2\r\n");
	uart_write_string("------------\t\t\t------------\r\n");
	uart_write_string("\n\n\n\r\r\n\r\n\r\n");
	uart_write_string(IMG_PLANE);
	terminal_move_up(16);
}

static bool runway1_requested = false;
static bool runway2_requested = false;
static bool runway1_granted = false;
static bool runway2_granted = false;
static bool runway1_inquiry = false;
static bool runway2_inquiry = false;

void application_display_requested_status()
{
	terminal_move_up(3);
	uart_write_char('\r');
	uart_write_string(runway1_requested ? "REQUESTED\t\t\t" : "         \t\t\t");
	uart_write_string(runway2_requested ? "REQUESTED\t\t\t" : "         \t\t\t");
	uart_write_string("\r\n\n\n");
}

void application_bootup_sequence()
{
	terminal_clear();
	terminal_reset_cursor();
	terminal_show_cursor(false);
	uart_write_string(IMG_ORLANDO);
	__delay_cycles(6e5);
	uart_write_string(IMG_UCF_KNIGHTS);
	uart_write_string("\r\n\r\n");
	uart_write_string(IMG_F22);
	uart_write_string("\r\n\r\nPress any key to continue...\r\n");
	uint8_t input = NULL;
	do
	{
		input = uart_read_char();
	} while (!input);
}

void application_display_grant_status()
{
	terminal_move_up(2);
	uart_write_char('\r');
	if (runway1_granted)
	{
		uart_write_string("In Use ");
		terminal_display_takeoff();
		uart_write_string("\t\t\t");
	}
	else
	{
		uart_write_string("        \t\t\t");
	}
	if (runway2_granted)
	{
		uart_write_string("In Use ");
		terminal_display_takeoff();
		uart_write_string("\t\t\t\t");
	}
	else
	{
		uart_write_string("        \t\t\t\t");
	}
	uart_write_string("\r\n\n");
}

void application_display_inquiry_status()
{
	uart_write_char('\r');
	uart_write_string(runway1_inquiry ? "*** Inquiry ***\t\t\t" : "               \t\t\t");
	uart_write_string(runway2_inquiry ? "*** Inquiry ***\t\t\t" : "               \t\t\t");
}

void application_display_reset_status()
{
	application_display_inquiry_status();
	application_display_grant_status();
	application_display_requested_status();
}

void application_demo()
{
	TA0CCR0 = 10000;
	TA0CCTL0 |= CCIE;
	TA0CCTL0 &= ~CCIFG;
	TA0CTL = TASSEL__ACLK | ID__1 | MC__UP | TACLR;
	_enable_interrupts();

	application_bootup_sequence();
	application_display();
	while (true)
	{
		uint8_t input = NULL;
		do
		{
			input = uart_read_char();
		} while (!input);
		uart_write_char('\r');

		switch (input)
		{
		// request runway
		case '1':
		case '3':
			// if runway is already requested do nothing
			// otherwise:
			// set request flag for runway 1
			// print on terminal "Requested" under Runway 1 label
			runway1_requested |= input == '1';
			runway2_requested |= input == '3';
			LightRedLED(runway1_requested);
			LightGreenLED(runway2_requested);
			// display requested line
			application_display_requested_status();
			break;
		// release runway
		case '7':
		case '9':
			runway1_requested &= (input == '7') ? false : true;
			runway2_requested &= (input == '9') ? false : true;
			// clear granted access if the pilot forfieted access
			runway1_granted &= runway1_requested;
			runway2_granted &= runway2_requested;
			// clear inquiry
			runway1_inquiry &= runway1_requested;
			runway2_inquiry &= runway2_requested;
			// update display
			application_display_reset_status();
			break;
		}
	}
}

#pragma vector = PORT1_VECTOR
__interrupt void ISR_PORT1()
{
	if (P1IFG & BUTTON1)
	{
		// button 1 has been pressed
		// this signals that the controller has decided to release runway 1
		// if the runway was requested we then can release the runway
		// otherwise do nothing
		if (runway1_requested && !runway1_granted)
		{
			// runway was previously requeseted; grant access
			runway1_granted = true;
			application_display_grant_status();
		}
		// if runway1 is already granted, then the operator is asking operator
		// to see if runway is still in use
		else if (runway1_granted)
		{
			runway1_inquiry = true;
			application_display_inquiry_status();
		}
	}
	if (P1IFG & BUTTON2)
	{
		// button 2 has been pressed
		// this signals that the controller has decided to release runway 2
		// if the runway was requested we then can release the runway
		// otherwise do nothing
		if (runway2_requested && !runway2_granted)
		{
			// runway was previously requeseted; grant access
			runway2_granted = true;
			application_display_grant_status();
		}
		// if runway2 is already granted, then the operator is asking operator
		// to see if runway is still in use
		else if (runway2_granted)
		{
			runway2_inquiry = true;
			application_display_inquiry_status();
		}
	}
	// attempted debouncing
	__delay_cycles(2e4);
	P1IFG &= ~(BUTTON1 | BUTTON2);
}

#pragma vector = TIMER0_A0_VECTOR
__interrupt void ISR_T0A0()
{
	if (runway1_granted)
	{
		// runway 1 was granted, flash the red led
		ToggleRedLED();
	}
	else if (!runway1_requested)
	{
		// runway 1 is no longer granted or requested therefore turn off led
		LightRedLED(false);
	}
	if (runway2_granted)
	{
		// runway 2 was granted, flash the green led
		ToggleGreenLED();
	}
	else if (!runway2_requested)
	{
		// runway 2 is no longer granted or requested therefore turn off led
		LightGreenLED(false);
	}
	TA0CCTL0 &= ~CCIFG;
}

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD; // stop watchdog timer
	PM5CTL0 &= ~LOCKLPM5;	  // Enable the GPIO pins

	P1DIR |= redLED;   // Direct pin as output
	P9DIR |= greenLED; // Direct pin as output

	// Set input direction for buttons
	P1DIR &= ~(BUTTON1 | BUTTON2);
	// enable pull-up resistors to avoid false triggers caused by static fields
	P1REN |= BUTTON1 | BUTTON2;
	// pull high buttons
	P1OUT |= BUTTON1 | BUTTON2;
	// interrupt on falling edge
	P1IES = BUTTON1 | BUTTON2;
	// reset interrupt flags
	P1IFG &= (BUTTON1 | BUTTON2);
	// enable PORT1 interrupts
	P1IE |= BUTTON1 | BUTTON2;

	config_ACLK_to_32KHz_crystal();
	Initialize_UART();
	LightRedLED(false);
	LightGreenLED(false);

	application_demo();

	_low_power_mode_3();

	return 0;
}

void uart_write_uint16(unsigned int number)
{
	static const char ascii_digits[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
	while (number)
	{
		uint8_t digit = number % 10;
		number /= 10;
		uart_write_char(ascii_digits[digit]);
	}
}

void uart_write_string(const char *str)
{
	size_t length = strlen(str);
	size_t i;
	for (i = 0; i < length; i++)
	{
		uart_write_char(str[i]);
	}
}

void uart_write_char(unsigned char ch)
{
	// Wait for any ongoing transmission to complete
	while ((FLAGS & TXFLAG) == 0)
	{
	}
	// Copy the byte to the transmit buffer
	TXBUFFER = ch; // Tx flag goes to 0 and Tx begins!
	return;
}

// The function returns the byte; if none received, returns null character
uint8_t uart_read_char(void)
{
	uint8_t temp;
	// Return null character (ASCII=0) if no byte was received
	if ((FLAGS & RXFLAG) == 0)
		return 0;
	// Otherwise, copy the received byte (this clears the flag) and return it
	temp = RXBUFFER;
	return temp;
}

// Configure UART to the popular configuration
// 9600 baud, 8-bit data, LSB first, no parity bits, 1 stop bit
// no flow control, oversampling reception
// Clock: SMCLK @ 1 MHz (1,000,000 Hz)
void Initialize_UART(void)
{
	// Configure pins to UART functionality
	P3SEL1 &= ~(BIT4 | BIT5);
	P3SEL0 |= (BIT4 | BIT5);
	// Main configuration register
	UCA1CTLW0 = UCSWRST; // Engage reset; change all the fields to zero
	// Most fields in this register, when set to zero, correspond to the
	// popular configuration
	UCA1CTLW0 |= UCSSEL__SMCLK; // Set clock to SMCLK
	// Configure the clock dividers and modulators (and enable oversampling)
	UCA1BRW = 6; // divider
	// Modulators: UCBRF = 8 = 1000 --> UCBRF3 (bit #3)
	// UCBRS = 0x20 = 0010 0000 = UCBRS5 (bit #5)
	UCA1MCTLW = UCBRF3 | UCBRS5 | UCOS16;
	// Exit the reset state
	UCA1CTLW0 &= ~UCSWRST;
}

void LightRedLED(bool state)
{
	if (state)
		P1OUT |= redLED;
	else
		P1OUT &= ~redLED;
}

void LightGreenLED(bool state)
{
	if (state)
		P9OUT |= greenLED;
	else
		P9OUT &= ~greenLED;
}

void ToggleRedLED() { P1OUT ^= redLED; }
void ToggleGreenLED() { P9OUT ^= greenLED; }

// Configures ACLK to 32 KHz crystal
void config_ACLK_to_32KHz_crystal()
{
	// By default, ACLK runs on LFMODCLK at 5MHz/128 = 39 KHz
	// Reroute pins to LFXIN/LFXOUT functionality
	PJSEL1 &= ~BIT4;
	PJSEL0 |= BIT4;
	// Wait until the oscillator fault flags remain cleared
	CSCTL0 = CSKEY; // Unlock CS registers
	do
	{
		CSCTL5 &= ~LFXTOFFG; // Local fault flag
		SFRIFG1 &= ~OFIFG;	 // Global fault flag
	} while ((CSCTL5 & LFXTOFFG) != 0);
	CSCTL0_H = 0; // Lock CS registers
	return;
}

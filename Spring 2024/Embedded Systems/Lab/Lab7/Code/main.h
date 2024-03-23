#include <msp430fr6989.h>
#include <stdint.h>
#include <stdbool.h>

#define FLAGS UCA1IFG      // Contains the transmit & receive flags
#define RXFLAG UCRXIFG     // Receive flag
#define TXFLAG UCTXIFG     // Transmit flag
#define TXBUFFER UCA1TXBUF // Transmit buffer
#define RXBUFFER UCA1RXBUF // Receive buffer

#define BUTTON1 BIT1
#define BUTTON2 BIT2

int i2c_read_word(unsigned char i2c_addrs, unsigned char i2c_reg, unsigned int *data); //
int i2c_write_word(unsigned char i2c_addrs, unsigned char i2c_reg, unsigned int data); //
void Initialize_I2C(void);
void Initialize_UART(void);
void config_ACLK_to_32KHz_crystal();
void uart_write_uint16(unsigned int n);
void uart_write_string(const char *str);
void uart_write_nstring(void *pStr, uint16_t size);

bool IsButton1Pressed()
{
    return (~P1IN & BUTTON1) ? true : false;
}

bool IsButton2Pressed()
{
    return (~P1IN & BUTTON2) ? true : false;
}

void terminal_clear()
{
    uart_write_string("\033[2J");
}

void terminal_reset_cursor()
{
    uart_write_string("\033[1;1H");
}

// Read a word (2 bytes) from I2C (address, register)
int i2c_read_word(unsigned char i2c_address, unsigned char i2c_reg, unsigned int *data)
{
    unsigned char byte1, byte2;
    // Initialize the bytes to make sure data is received every time
    byte1 = 111;
    byte2 = 111;
    //********** Write Frame #1 ***************************
    UCB1I2CSA = i2c_address; // Set I2C address
    UCB1IFG &= ~UCTXIFG0;
    UCB1CTLW0 |= UCTR;    // Master writes (R/W bit = Write)
    UCB1CTLW0 |= UCTXSTT; // Initiate the Start Signal
    while ((UCB1IFG & UCTXIFG0) == 0)
    {
    }
    UCB1TXBUF = i2c_reg; // Byte = register address
    while ((UCB1CTLW0 & UCTXSTT) != 0)
    {
    }
    if ((UCB1IFG & UCNACKIFG) != 0)
        return -1;
    UCB1CTLW0 &= ~UCTR;   // Master reads (R/W bit = Read)
    UCB1CTLW0 |= UCTXSTT; // Initiate a repeated Start Signal
    //****************************************************
    //********** Read Frame #1 ***************************
    while ((UCB1IFG & UCRXIFG0) == 0)
    {
    }
    byte1 = UCB1RXBUF;
    //****************************************************
    //********** Read Frame #2 ***************************
    while ((UCB1CTLW0 & UCTXSTT) != 0)
    {
    }
    UCB1CTLW0 |= UCTXSTP; // Setup the Stop Signal
    while ((UCB1IFG & UCRXIFG0) == 0)
    {
    }
    byte2 = UCB1RXBUF;
    while ((UCB1CTLW0 & UCTXSTP) != 0)
    {
    }
    //****************************************************
    // Merge the two received bytes
    *data = ((byte1 << 8) | (byte2 & 0xFF));
    return 0;
}

// Write a word (2 bytes) to I2C (address, register)
int i2c_write_word(unsigned char i2c_address, unsigned char i2c_reg,
                   unsigned int data)
{
    unsigned char byte1, byte2;
    byte1 = (data >> 8) & 0xFF; // MSByte
    byte2 = data & 0xFF;        // LSByte
    UCB1I2CSA = i2c_address;    // Set I2C address
    UCB1CTLW0 |= UCTR;          // Master writes (R/W bit = Write)
    UCB1CTLW0 |= UCTXSTT;       // Initiate the Start Signal
    while ((UCB1IFG & UCTXIFG0) == 0)
    {
    }
    UCB1TXBUF = i2c_reg; // Byte = register address
    while ((UCB1CTLW0 & UCTXSTT) != 0)
    {
    }
    while ((UCB1IFG & UCTXIFG0) == 0)
    {
    }
    //********** Write Byte #1 ***************************
    UCB1TXBUF = byte1;
    while ((UCB1IFG & UCTXIFG0) == 0)
    {
    }
    //********** Write Byte #2 ***************************
    UCB1TXBUF = byte2;
    while ((UCB1IFG & UCTXIFG0) == 0)
    {
    }
    UCB1CTLW0 |= UCTXSTP;
    while ((UCB1CTLW0 & UCTXSTP) != 0)
    {
    }

    return 0;
}

void Initialize_I2C(void)
{
    // Configure the MCU in Master mode
    // Configure pins to I2C functionality
    // (UCB1SDA same as P4.0) (UCB1SCL same as P4.1)
    // (P4SEL1=11, P4SEL0=00) (P4DIR=xx)
    P4SEL1 |= (BIT1 | BIT0);
    P4SEL0 &= ~(BIT1 | BIT0);
    // Enter reset state and set all fields in this register to zero
    UCB1CTLW0 = UCSWRST;
    // Fields that should be nonzero are changed below
    // (Master Mode: UCMST) (I2C mode: UCMODE_3) (Synchronous mode: UCSYNC)
    // (UCSSEL 1:ACLK, 2,3:SMCLK)
    UCB1CTLW0 |= UCMST | UCMODE_3 | UCSYNC | UCSSEL_3;
    // Clock frequency: SMCLK/8 = 1 MHz/8 = 125 KHz
    UCB1BRW = 8;
    // Chip Data Sheet p. 53 (Should be 400 KHz max)
    // Exit the reset mode at the end of the configuration
    UCB1CTLW0 &= ~UCSWRST;
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
        SFRIFG1 &= ~OFIFG;   // Global fault flag
    } while ((CSCTL5 & LFXTOFFG) != 0);
    CSCTL0_H = 0; // Lock CS registers
    return;
}

void uart_write_uint16(unsigned int number)
{
    // Max number of digits in a uint16_t is 5
        int divisor = 10000;

        while (divisor > 0) {
            int digit = number / divisor;
            if (digit > 0 || divisor == 1) {
                uart_write_char('0' + digit);
            }
            number %= divisor;
            divisor /= 10;
        }
}

void uart_write_string(const char *str)
{
    uint16_t length = strlen(str);
    uint16_t i;
    for (i = 0; i < length; i++)
    {
        uart_write_char(str[i]);
    }
}

void uart_write_nstring(void *pStr, uint16_t size)
{
    uint8_t *str = (uint8_t *)pStr;
    uint16_t i = 0;
    for (i = 0; i < size; i++)
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

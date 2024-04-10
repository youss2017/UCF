#ifndef __LAB9_IMPLEMENTATIONS__
#define __LAB9_IMPLEMENTATIONS__

#include "Grlib/grlib/grlib.h"    // Graphics library (grlib)
#include "LcdDriver/lcd_driver.h" // LCD driver
#include <stdio.h>

static Graphics_Context g_sContext; // Declare a graphic library context

extern const tImage UCF_Logo;
extern const tFont g_sFontfixed7x13;

#define RESULT 0x00
#define CONFIGURATION 0x01
#define LOW_LIMIT 0x02
#define HIGH_LIMIT 0x03
#define MANUFACTURER_ID 0x7E
#define DEVICE_ID 0x7F
#define SENSOR_GND 0x44

#define VK_ENTER 0x0A
#define VK_BACKSPACE 0x08

void lab_9_1() {
    char mystring[20];
    // Clear the screen
    Graphics_clearDisplay(&g_sContext);
    ////////////////////////////////////////////////////////////////////////////////////////////

    // Print message
    Graphics_drawStringCentered(&g_sContext, (int8_t*)"Welcome to", AUTO_STRING_LENGTH, 64, 30, OPAQUE_TEXT);
    sprintf(mystring, "EEL 4742C Lab!");
    Graphics_drawStringCentered(&g_sContext, (int8_t*)mystring, AUTO_STRING_LENGTH, 64, 55, OPAQUE_TEXT);
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

void sensor_config_register()
{
    // configure the sensor: RN = 0b0111, CT = 0, M = 0b11,  ME = 1
    uint16_t sensorconfig = 0b0111011000000100;
    i2c_write_word(SENSOR_GND, CONFIGURATION, sensorconfig);
}

uint16_t sensor_read_lux()
{
    uint16_t lux = 0;
    i2c_read_word(SENSOR_GND, RESULT, &lux);
    return 1.28 * lux;
}

void lab_9_2() {
    sensor_config_register();
    Graphics_clearDisplay(&g_sContext);

    // draw UCF logo
    Graphics_drawImage(&g_sContext, &UCF_Logo, 0, 0);

    Graphics_setBackgroundColor(&g_sContext, GRAPHICS_COLOR_BEIGE);
    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_BISQUE);

    // Set the default font for strings
    GrContextFontSet(&g_sContext, &g_sFontFixed6x8);

    __delay_cycles(2e5);
    Graphics_clearDisplay(&g_sContext);

    char szBuf[30];
    int len = sprintf(szBuf, "EEL 4742 lab.");
    Graphics_drawStringCentered(&g_sContext, (int8_t*)szBuf, len, 30, 25, 1);
    Graphics_setFont(&g_sContext, &g_sFontfixed7x13);
    len = sprintf(szBuf, "MSP430 Broke :(");
    Graphics_drawStringCentered(&g_sContext, (int8_t*)szBuf, len, 72, 40, 1);

    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_RED);
    Graphics_drawCircle(&g_sContext, 10, 11, 5);
    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_YELLOW);
    Graphics_drawircle(&g_sContext, 20, 11, 5);
    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_GREEN);
    Graphics_drawCircle(&g_sContext, 30, 11, 5);


    uint8_t value = 0;
    while(1) {
        Graphics_Rectangle rect;
        rect.xMin = 10;
        rect.xMax = 120;
        rect.yMin = 90;
        rect.yMax = 110;
        Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_BEIGE);
        Graphics_drawRectangle(&g_sContext, &rect);

               rect.xMin = 20;
               rect.xMax = 50;
               rect.yMin = 99;
               rect.yMax = 110;
               Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_GREEN);
               Graphics_fillRectangle(&g_sContext, &rect);


        value++;
        sprintf(szBuf, "%d", sensor_read_lux());
        Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_BLANCHED_ALMOND);
        Graphics_drawString(&g_sContext, (int8_t*)szBuf, len, 20, 99, 0);
        __delay_cycles(1e5);
    }

    _low_power_mode_3();

}

#endif

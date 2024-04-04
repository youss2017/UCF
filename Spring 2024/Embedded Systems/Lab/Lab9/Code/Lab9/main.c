/*
EEL 4742C - UCF

Code that prints a welcome message to the pixel display.
*/

#include "msp430fr6989.h"
#include "Grlib/grlib/grlib.h"    // Graphics library (grlib)
#include "LcdDriver/lcd_driver.h" // LCD driver
#include <stdio.h>
#include <math.h>
#include "lab9.h"
#include "shader1.h"

#define WIDTH 128
#define HEIGHT 128
#define redLED BIT0
#define greenLED BIT7
#define S1 BIT1
#define S2 BIT2

extern void HAL_LCD_writeCommand(uint8_t command);
extern void HAL_LCD_writeData(uint8_t data);
extern void HAL_LCD_writeCommand(uint8_t command);

void Initialize_Clock_System();

// Function to draw a pixel at (x, y) with color
void draw_pixel(float r, float g, float b)
{
    uint16_t red = r * 0b11111;
    uint16_t green = g * 0b111111;
    uint16_t blue = b * 0b11111;
    uint16_t pixelValue = (red << 11) | (green << 5) | (blue);
    // We're in 16-bit pixel mode
    HAL_LCD_writeData(pixelValue & 0xFF);
    HAL_LCD_writeData((pixelValue >> 8) & 0xFF);
}

void run_shader1()
{
    iTime += 0.01;
    uint16_t x, y;
    for (y = 0; y < 128; y++)
    {
        for (x = 0; x < 128; x++)
        {
            vec2 uv;
            uv.x = x;
            uv.y = y;
            vec3 fragColor;
            mainImage(&fragColor, uv);
            draw_pixel(fragColor.r, fragColor.g, fragColor.b);
        }
    }
}

// ****************************************************************************
void main(void)
{
    char mystring[20];

    // Configure WDT & GPIO
    WDTCTL = WDTPW | WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    // Configure LEDs
    P1DIR |= redLED;
    P9DIR |= greenLED;
    P1OUT &= ~redLED;
    P9OUT &= ~greenLED;

    // Configure buttons
    P1DIR &= ~(S1 | S2);
    P1REN |= (S1 | S2);
    P1OUT |= (S1 | S2);
    P1IFG &= ~(S1 | S2); // Flags are used for latched polling

    // Set the LCD backlight to highest level
    P2DIR |= BIT6;
    P2OUT |= BIT6;

    // Configure clock system
    Initialize_Clock_System();

    ////////////////////////////////////////////////////////////////////////////////////////////
    // Graphics functions

    Crystalfontz128x128_Init(); // Initialize the display

    // Set the screen orientation
    Crystalfontz128x128_SetOrientation(0);

    // Initialize the context
    Graphics_initContext(&g_sContext, &g_sCrystalfontz128x128);

    // Set background and foreground colors
    Graphics_setBackgroundColor(&g_sContext, GRAPHICS_COLOR_BLACK);
    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_WHITE);

    // Set the default font for strings
    GrContextFontSet(&g_sContext, &g_sFontFixed6x8);
    HAL_LCD_writeCommand(CM_DISPON);

    // lab_9_1();
    lab_9_2();

    //while (1)
    //{
     //   // configure the dispaly
     //   Crystalfontz128x128_SetDrawFrame(0, 0, 127, 127);
      //  HAL_LCD_writeCommand(CM_RAMWR);
       // run_shader1();
    //}
}

// *****************************
void Initialize_Clock_System()
{
    // DCO frequency = 8 MHz (default value)
    // MCLK = fDCO/2 = 4 MHz
    // SMCLK = fDCO/1 = 8 MHz
    CSCTL0 = CSKEY;                  // Unlock clock module config registers
    CSCTL3 &= ~(BIT2 | BIT1 | BIT0); // DIVM = 000
    CSCTL3 |= BIT0;                  // DIVM = 001 = /2
    CSCTL3 &= ~(BIT6 | BIT5 | BIT4); // DIVS = 000 = /1
    CSCTL0_H = 0;                    // Relock clock module config registers

    return;
}

#ifndef __LAB9_IMPLEMENTATIONS__
#define __LAB9_IMPLEMENTATIONS__

#include "Grlib/grlib/grlib.h"    // Graphics library (grlib)
#include "LcdDriver/lcd_driver.h" // LCD driver
#include <stdio.h>

static Graphics_Context g_sContext; // Declare a graphic library context

extern const tImage UCF_Logo;
extern const tFont g_sFontfixed7x13;

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

void lab_9_2() {
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
    Graphics_drawStringCentered(&g_sContext, (int8_t*)szBuf, len, 20, 20, 1);
    Graphics_setFont(&g_sContext, &g_sFontfixed7x13);
    len = sprintf(szBuf, "MSP430 Broke :(");
    Graphics_drawStringCentered(&g_sContext, (int8_t*)szBuf, len, 20, 40, 1);

    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_RED);
    Graphics_drawCircle(&g_sContext, 10, 11, 5);
    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_YELLOW);
    Graphics_drawCircle(&g_sContext, 20, 11, 5);
    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_GREEN);
    Graphics_drawCircle(&g_sContext, 30, 11, 5);

    Graphics_Rectangle rect;
    rect.xMin = 10;
    rect.xMax = 120;
    rect.yMin = 90;
    rect.yMax = 110;
    Graphics_setForegroundColor(&g_sContext, GRAPHICS_COLOR_CADET_BLUE);
    Graphics_drawRectangle(&g_sContext, &rect);

    int8_t value = 0;
    while(1) {
        value++;
        sprintf(szBuf, "%d", value);
        Graphics_drawStringCentered(&g_sContext, (int8_t*)szBuf, len, 20, 99, 0);
        __delay_cycles(1e5);
    }

    _low_power_mode_3();

}

#endif

#include <msp430fr6989.h>
#include <stdint.h>
#include <stdbool.h>

#define BUTTON1 BIT1
#define BUTTON2 BIT2
#define redLED BIT0 // Red LED at P1.0
#define greenLED BIT7 // Green LED at P9.7

/**
 * main.c
 */

bool IsButton1Pressed() {
    return (~P1IN & BUTTON1) ? true : false;
}

bool IsButton2Pressed() {
    return (~P1IN & BUTTON2) ? true : false;
}

void LightRedLED(bool state) {
    if(state)
        P1OUT |= redLED;
    else
        P1OUT &= ~redLED;
}

void LightGreenLED(bool state) {
    if(state)
        P9OUT |= greenLED;
    else
        P9OUT &= ~greenLED;
}

void ToggleRedLED() {P1OUT ^= redLED;}
void ToggleGreenLED() {P9OUT ^= greenLED;}

void TurningOnTheLEDWithTheButton_2_1() {
    for(;;) {
        if(IsButton1Pressed()) {
            LightRedLED(true);
        } else {
            LightRedLED(false);
        }
        if(IsButton2Pressed()) {
            LightGreenLED(true);
        } else {
            LightGreenLED(false);
        }
    }
}

void TwoPushButtonsOccupancyMonitor_2_2() {
    uint8_t selectedBtn = 0;
    for(;;) {
        bool btn1State = IsButton1Pressed();
        bool btn2State = IsButton2Pressed();
        LightRedLED(btn1State);
        LightGreenLED(btn2State);
        _delay_cycles(20000);
    }
}

void TwoPushButtonsElectricGeneratorLoadControl_2_3() {
    uint8_t selectedBtn = 0;
    for(;;) {
        bool btn1State = IsButton1Pressed();
        bool btn2State = IsButton2Pressed();
        if(selectedBtn == 0) {
            if(btn1State) {
                selectedBtn = 1;
            } else if(btn2State) {
                selectedBtn = 2;
            }
        } else {
            selectedBtn &= btn1State ? 3 : ~1;
            selectedBtn &= btn2State ? 3 : ~2;
        }
        LightRedLED(selectedBtn == 1);
        LightGreenLED(selectedBtn == 2);
    }
}

void TwoPushButtonsElectricGeneratorLoadControl_2_4() {
    uint8_t selectedBtn = 0;
    bool safetyFlag = false;
    for(;;) {
        bool btn1State = IsButton1Pressed();
        bool btn2State = IsButton2Pressed();
        if(!btn1State && !btn2State)
            safetyFlag = false;
        if(selectedBtn == 0) {
            if(btn1State) {
                selectedBtn = 1;
            } else if(btn2State) {
                selectedBtn = 2;
            }
        } else {
            if(btn1State && btn2State) {
                safetyFlag = true;
            }
            selectedBtn &= btn1State ? 3 : ~1;
            selectedBtn &= btn2State ? 3 : ~2;
        }
        LightRedLED(selectedBtn == 1 && !safetyFlag);
        LightGreenLED(selectedBtn == 2 && !safetyFlag);
    }
}

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	PM5CTL0 &= ~LOCKLPM5; // Enable the GPIO pins
	
    P1DIR |= redLED;
    P9DIR |= greenLED;
	P1DIR &= ~BUTTON1;
	P1DIR &= ~BUTTON2;
	P1REN |= BUTTON1 | BUTTON2;
	P1OUT |= BUTTON1 | BUTTON2;

	LightRedLED(false);
	LightGreenLED(false);

	TwoPushButtonsElectricGeneratorLoadControl_2_4();
}

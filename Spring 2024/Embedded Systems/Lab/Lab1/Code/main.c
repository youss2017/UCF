#include <msp430fr6989.h>
#include <stdint.h>
#define redLED BIT0 // Red LED at P1.0
#define greenLED BIT7 // Red LED at P9.7

void RunningCode() {
    volatile uint32_t i;
    for(;;) {
           // Delay loop
           for (i=0; i<20000; i++) {}
           P1OUT ^= redLED; // Toggle the LED
       }
}

void FlashingTwoLeds() {
    volatile uint32_t i;
    for(;;) {
           // Delay loop
           _delay_cycles(500000);
           P1OUT ^= redLED; // Toggle the LED
           P9OUT ^= greenLED; // Toggle the LED
       }
}

void FirefighterTruckLedPattern1() {
    volatile uint32_t i;
    int8_t counter = 6;
    for(;;) {
           // Delay loop
           _delay_cycles(45000);
           if(counter >= 0) {
               P1OUT ^= redLED; // Toggle the LED
               P9OUT = 0;
           } else {
               P1OUT = 0;
               P9OUT ^= greenLED; // Toggle the LED
               if(counter <= -8)
                   counter = 8;
           }
           counter--;
       }
}

void FirefighterTruckLedPattern2() {
    uint16_t j = 0;
    uint16_t k = 0;
    for(;;) {
           // Delay loop
        P1OUT |= redLED;
        P9OUT = 0;
        for(k = 1; k <= 4; k++) {
            for(j = 0; j < 5; j++) {
                switch(k) {
                case 1: _delay_cycles(300000); break;
                case 2: _delay_cycles(200000); break;
                case 3: _delay_cycles(100000); break;
                case 4: _delay_cycles(30000); break;
                }
                P1OUT ^= redLED; // Toggle the LED
                P9OUT ^= greenLED; // Toggle the LED
            }
        }
        P1OUT = 0;
        P9OUT = 0;
        for(k = 1; k <= 6; k++) {
            _delay_cycles(200000);
            P1OUT ^= redLED; // Toggle the LED
            P9OUT ^= greenLED; // Toggle the LED
        }
     }
}

void main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop the Watchdog timer
    PM5CTL0 &= ~LOCKLPM5; // Disable GPIO power-on default highimpedance mode
    P1DIR |= redLED; // Direct pin as output
    P9DIR |= greenLED; // Direct pin as output
    P1OUT = P9OUT = 0;
    FirefighterTruckLedPattern2();
}

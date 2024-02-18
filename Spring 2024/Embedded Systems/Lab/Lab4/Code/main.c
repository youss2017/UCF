#include <msp430fr6989.h>
#include <stdint.h>
#include <stdbool.h>

#define BUTTON1 BIT1
#define BUTTON2 BIT2
#define redLED BIT0   // Red LED at P1.0
#define greenLED BIT7 // Green LED at P9.7

#define SHOW_APPLICATION 1

/**
 * main.c
 */
#define CYCLE_COUNT 100
static int8_t g_DirectionCounter = 0;

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

bool IsButton1Pressed()
{
    return (~P1IN & BUTTON1) ? true : false;
}

bool IsButton2Pressed()
{
    return (~P1IN & BUTTON2) ? true : false;
}

//**********************************
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

#pragma vector = TIMER0_A1_VECTOR
__interrupt void ISR_T1A1()
{
    ToggleRedLED();
    ToggleGreenLED();
    TA0CTL &= ~TAIFG;
}

#pragma vector = TIMER0_A0_VECTOR
__interrupt void ISR_T0A1()
{
#if !SHOW_APPLICATION
    ToggleRedLED();
    ToggleGreenLED();
#else
    static int8_t g_CycleCounter = CYCLE_COUNT;
    int8_t direction = g_DirectionCounter;

    if (direction == 0 && g_CycleCounter % 10 == 0)
    {
        ToggleRedLED();
        ToggleGreenLED();
    }
    else if (direction > 0 || direction < 0)
    {
        uint8_t delay = (direction > 0) ? 1 : 1;

        switch (direction)
        {
            case 3: delay = 2; break;
            case 2: delay = 3; break;
            case 1: delay = 5; break;
            case -3: delay = 2; break;
            case -2: delay = 3; break;
            case -1: delay = 5; break;
        }

        if (g_CycleCounter % delay == 0)
        {
            if (direction > 0)
            {
                ToggleRedLED();
                LightGreenLED(false);
            }
            else
            {
                ToggleGreenLED();
                LightRedLED(false);
            }
        }
    }

    g_CycleCounter--;

    if (g_CycleCounter < 0)
        g_CycleCounter = CYCLE_COUNT;

#endif
}

#pragma vector = PORT1_VECTOR
__interrupt void ISR_PORT1()
{
#if !SHOW_APPLICATION
    if (P1IFG & BUTTON1)
    {
        ToggleRedLED();
    }
    if (P1IFG & BUTTON2)
    {
        ToggleGreenLED();
    }
    P1IFG &= ~(BUTTON1 | BUTTON2);
#else
    if (IsButton1Pressed())
    {
        g_DirectionCounter++;
    }
    if (IsButton2Pressed())
    {
        g_DirectionCounter--;
    }
    // clamp value
    g_DirectionCounter = g_DirectionCounter > 3 ? 3 : g_DirectionCounter;   // max
    g_DirectionCounter = g_DirectionCounter < -3 ? -3 : g_DirectionCounter; // min
    if (g_DirectionCounter == 0)
    {
        LightRedLED(false);
        LightGreenLED(false);
    }
    // delay 20ms to combact button debouncing
    __delay_cycles(5e5);
    // clear interrupt flags
    P1IFG &= ~(BUTTON1 | BUTTON2);
#endif
}

void ContinousModeInterrupt()
{
    TA0CTL = TASSEL__ACLK | ID__1 | MC__CONTINUOUS | TACLR | TAIE;
    _enable_interrupts();
}

void UpModeInterrupt()
{
    TA0CCR0 = 6535;
    TA0CCTL0 |= CCIE;
    TA0CCTL0 &= ~CCIFG;
    TA0CTL = TASSEL__ACLK | ID__1 | MC__UP | TACLR;
    _enable_interrupts();
}

void PushButtonInterrupt()
{
    P1DIR &= ~(BUTTON1 | BUTTON2);
    P1REN |= BUTTON1 | BUTTON2;
    P1OUT |= BUTTON1 | BUTTON2;
    P1IE |= BUTTON1 | BUTTON2;
    P1IES = BUTTON1 | BUTTON2;
    P1IFG &= (BUTTON1 | BUTTON2);
    _enable_interrupts();
}

void ApplicationCrawlerGuidenceSystem_4_5()
{
    // Set input direction for buttons
    P1DIR &= ~(BUTTON1 | BUTTON2);
    // enable pull-up resistors to avoid false triggers
    P1REN |= BUTTON1 | BUTTON2;
    // pull high buttons
    P1OUT |= BUTTON1 | BUTTON2;
    // interrupt on falling edge
    P1IES = BUTTON1 | BUTTON2;
    // reset interrupt flags
    P1IFG &= (BUTTON1 | BUTTON2);
    // enable PORT1 interrupts
    P1IE |= BUTTON1 | BUTTON2;

    // Up mode counter, 2x division, 32kHz clock module, interrupt enable
    // CCIE interrupts when target value in TA0CCR0 is reached, no flags need
    // to be cleared in TIMER0 since the ISR is not shared with other timers
    // TACLR resets the timer to start at 0
    TA0CTL = MC__UP | ID__1 | TASSEL__ACLK | CCIE | TACLR;
    // Interrupt when timer reaches the following value
    TA0CCR0 = 2e3;
    TA0CCTL0 |= CCIE;
    TA0CCTL0 &= ~CCIFG;

    LightRedLED(false);
    LightGreenLED(false);

    _enable_interrupts();
}

/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD; // stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;     // Enable the GPIO pins

    config_ACLK_to_32KHz_crystal();

    P1DIR |= redLED;   // Direct pin as output
    P9DIR |= greenLED; // Direct pin as output

    PushButtonInterrupt();

    _low_power_mode_3();

    return 0;
}

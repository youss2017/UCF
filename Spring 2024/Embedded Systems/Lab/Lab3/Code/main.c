#include <msp430fr6989.h>
#include <stdint.h>
#include <stdbool.h>

#define BUTTON1 BIT1
#define BUTTON2 BIT2
#define redLED BIT0   // Red LED at P1.0
#define greenLED BIT7 // Green LED at P9.7

/**
 * main.c
 */

void ClearTimerAInterruptFlag()
{
    TA0CTL &= ~TAIFG;
}

bool IsTimerAInterrupted()
{
    return (TA0CTL & TAIFG) ? true : false;
}

void WaitForTimerAInterrupt()
{
    while (!IsTimerAInterrupted())
    {
    }
}

bool IsButton1Pressed()
{
    return (~P1IN & BUTTON1) ? true : false;
}

bool IsButton2Pressed()
{
    return (~P1IN & BUTTON2) ? true : false;
}

// Will clear Timer A CCR0 register and clear TAIFG interrupt flag
void SetContinousTimerState(bool state)
{
    TA0CTL &= ~MC__UPDOWN;
    if (state)
    {
        TA0CTL |= MC__CONTINUOUS | TACLR;
        TA0CTL &= ~TAIFG;
    }
}

void ConfigureContinousTimerA()
{
    TA0CTL = TASSEL__ACLK | ID__1 | MC__CONTINUOUS | TACLR;
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

void ContinousMode()
{
    ConfigureContinousTimerA();
    while (true)
    {
        WaitForTimerAInterrupt();
        ClearTimerAInterruptFlag();
        ToggleRedLED();
    }
}

void UpMode()
{
    TA0CTL = TASSEL__ACLK | ID__1 | MC__UP | TACLR;
    TA0CCR0 = 6535; // 0.1 seconds
    while (true)
    {
        WaitForTimerAInterrupt();
        ClearTimerAInterruptFlag();
        ToggleGreenLED();
    }
}

uint16_t RecordSignal()
{
    SetContinousTimerState(true);
    ClearTimerAInterruptFlag();
    while (IsButton1Pressed())
    {
        if (IsTimerAInterrupted())
        {
            return UINT16_MAX;
        }
    }
    return TA0R;
}

void SignalRepeaterErrorState()
{
    LightRedLED(false);
    SetContinousTimerState(false);
    while (!IsButton2Pressed())
    {
        __delay_cycles(1.25e5);
        ToggleGreenLED();
    }
    LightGreenLED(false);
}

void TransmitSignal(uint16_t duration)
{
    LightRedLED(false);
    TA0CTL = TASSEL__ACLK | ID__1 | MC__UP | TACLR;
    TA0CCR0 = duration;
    LightGreenLED(true);
    WaitForTimerAInterrupt();
    LightGreenLED(false);
}

void ApplicationSignalRepeater_3_3()
{
    P1DIR &= ~BUTTON1;
    P1DIR &= ~BUTTON2;
    P1REN |= BUTTON1 | BUTTON2;
    P1OUT |= BUTTON1 | BUTTON2;
    ConfigureContinousTimerA();
    SetContinousTimerState(false);
    for (;;)
    {
        if (IsButton1Pressed())
        {
            LightRedLED(true);
            uint16_t duration = RecordSignal();
            if (duration == UINT16_MAX)
            {
                SignalRepeaterErrorState();
                continue;
            }
            TransmitSignal(duration);
        }
    }
}

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD; // stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;     // Enable the GPIO pins

    P1DIR |= redLED;
    P9DIR |= greenLED;

    LightRedLED(false);
    LightGreenLED(false);

    config_ACLK_to_32KHz_crystal();

    UpMode();

    return 0;
}

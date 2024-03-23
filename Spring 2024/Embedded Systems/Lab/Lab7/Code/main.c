#include "main.h"

#define RESULT 0x00
#define CONFIGURATION 0x01
#define LOW_LIMIT 0x02
#define HIGH_LIMIT 0x03
#define MANUFACTURER_ID 0x7E
#define DEVICE_ID 0x7F
#define SENSOR_GND 0x44

#define VK_ENTER 0x0A
#define VK_BACKSPACE 0x08

uint16_t sensor_read_lux()
{
    uint16_t lux = 0;
    i2c_read_word(SENSOR_GND, RESULT, &lux);
    return 1.28 * lux;
}

void part1_read_deviceinfo()
{
    uint16_t manufacturerId = 0, deviceId = 0, lux = 0;
    i2c_read_word(0x44, 0x7E, &manufacturerId);
    i2c_read_word(0x44, 0x7F, &deviceId);
    for (;;)
    {
        uart_write_string("Manufacturer Id: ");
        uart_write_nstring(&manufacturerId, 2);
        uart_write_string(", Device Id: ");
        uart_write_uint16(deviceId);
        uart_write_string("\r\n");
        __delay_cycles(1e6);
    }
}

void sensor_config_register()
{
    // configure the sensor: RN = 0b0111, CT = 0, M = 0b11,  ME = 1
    uint16_t sensorconfig = 0b0111011000000100;
    i2c_write_word(SENSOR_GND, CONFIGURATION, sensorconfig);
}

void part2_read_lux()
{
    sensor_config_register();
    for (;;)
    {
        uart_write_string("LUX: ");
        uart_write_uint16(sensor_read_lux());
        uart_write_string("\r\n");
    }
}

void add_minute(uint8_t *hour, uint8_t *minute)
{
    *minute += 1;
    if (*minute >= 60)
    {
        *minute = 0;
        *hour += 1;
    }
    if (*hour > 12)
    {
        *hour = 1;
    }
}

void read_time(uint8_t* pOutHour, uint8_t* pOutMinute) {
    uart_write_string("Enter the time...(3 or 4 digits then hit Enter)\r\n");
        uart_write_string("Time is set to ");
        char szBuffer[5] = {0};
        char currentKey = VK_ENTER;
        uint8_t index = 0;
        do
        {
            currentKey = uart_read_char();
            if (currentKey)
            {
                if (currentKey == VK_BACKSPACE || currentKey == 127)
                {
                    szBuffer[index] = 0;
                    if (index > 0)
                    {
                        // move cursor back, clear character, move cursor back
                        uart_write_string("\b \b");
                    }
                }
                else
                {
                    // is this an acceptable key?
                    if (currentKey >= 48 && currentKey <= 58)
                    {
                        // yes, key is a number or colon
                        uart_write_char(currentKey); // write key again so it is displayed on UART terminal.
                        if (index == 5)
                            index = 4; // prevent buffer overflow
                        szBuffer[index] = currentKey;
                        index++;
                    }
                }
            }
        } while (currentKey != '\r' && currentKey != '\n');
        uart_write_string("\r\n");
        // parse input
        // if user did not input time, the default time is 12:00
        uint8_t hour = 0;
        uint8_t minute = 0;
        if (index)
        {
            uint8_t i;
            bool meetColon = false;
            for (i = 0; i < index; i++)
            {
                char key = szBuffer[i];

                // input key is either a number or colon
                if (key == ':')
                {
                    if (meetColon)
                    {
                        goto parse_error;
                    }
                    meetColon = true;
                }
                else
                {
                    // convert ascii number to integer
                    uint8_t number = key - '0';
                    if (!meetColon)
                    {
                        // hour
                        hour = (hour * 10) + number;
                        if (hour > 12)
                        {
                            // invalid time
                            goto parse_error;
                        }
                    }
                    else
                    {
                        // minute
                        minute = (minute * 10) + number;
                        if (minute > 60)
                        {
                            // invalid time
                            goto parse_error;
                        }
                    }
                }
                continue;
            parse_error:
                // invalid input use default time
                hour = 12;
                minute = 0;
                uart_write_string("Invalid time input, using default time (12:00).\r\n");
                break;
            }
        }
        uart_write_uint16(hour);
        uart_write_char(':');
        uart_write_uint16(minute);
        uart_write_string("\r\n");
        *pOutHour = hour;
        *pOutMinute = minute;
}

void part3_application()
{
    uint8_t hour = 0;
    uint8_t minute = 0;
    sensor_config_register();
    // Set input direction for buttons
    P1DIR &= ~(BUTTON1 | BUTTON2);
    // enable pull-up resistors to avoid false triggers caused by static fields
    P1REN |= BUTTON1 | BUTTON2;
    // pull high buttons
    P1OUT |= BUTTON1 | BUTTON2;
    __delay_cycles(1e5);
    // wait until button 1 and 2 are pressed to begin LUX
    //while (P1IN & BUTTON1 || P1IN & BUTTON2)
    //{
    //}
    // begin LUX
    uart_write_string("*** Lux Logger ***\r\n\r\n");
    read_time(&hour, &minute);
    int32_t baseline_lux = sensor_read_lux();
    if (baseline_lux < 10)
        baseline_lux = 10; // clamp to 10 to avoid underflow problems
    for (;;)
    {
        if(IsButton1Pressed()) {
            read_time(&hour, &minute);
        }
        int32_t lux = sensor_read_lux();
        if (hour > 9)
        {
            uart_write_uint16(hour);
        }
        else
        {
            uart_write_char(' ');
            uart_write_uint16(hour);
        }
        uart_write_char(':');
        if (minute < 10)
        {
            uart_write_char('0');
            uart_write_uint16(minute);
        }
        else
        {
            uart_write_uint16(minute);
        }
        uart_write_char('\t');
        uart_write_uint16(lux);
        uart_write_string(" lux");
        if (lux >= baseline_lux + 10)
        {
            uart_write_string(" (+");
            uart_write_uint16(lux - baseline_lux);
            uart_write_string(")   <Up>");
            baseline_lux = lux;
        }
        else if (lux <= baseline_lux - 10 && (baseline_lux - 10) >= 0)
        {
            uart_write_string(" (-");
            uart_write_uint16(baseline_lux - lux);
            uart_write_string(")   <Down>");
            baseline_lux = lux;
        }
        uart_write_string("\r\n");
        __delay_cycles(5e6); // wait one minute
        add_minute(&hour, &minute);
    }
}

/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD; // stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;     // Enable the GPIO pins

    Initialize_UART();
    Initialize_I2C();

    terminal_clear();
    terminal_reset_cursor();

    part3_application();

    return 0;
}

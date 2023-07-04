#include <Adafruit_LEDBackpack.h>
#include "display.h"

// class Display : public Adafruit_BicolorMatrix
// {

// public:
//     I2cPins i2cPins;
//     uint8_t address;

Adafruit_I2CDevice *Display::get_i2c_device()
{
    return this->i2c_dev;
}

void Display::drawPixel(int16_t x, int16_t y, uint16_t color)
{
    if ((y < 0) || (y >= 8))
        return;
    if ((x < 0) || (x >= 8))
        return;
#ifndef _swap_int16_t
#define _swap_int16_t(a, b) \
    {                       \
        int16_t t = a;      \
        a = b;              \
        b = t;              \
    } ///< 16-bit var swap
#endif
    switch (getRotation())
    {
    case 1:
        _swap_int16_t(x, y);
        x = 8 - x - 1;
        break;
    case 2:
        x = 8 - x - 1;
        y = 8 - y - 1;
        break;
    case 3:
        _swap_int16_t(x, y);
        y = 8 - y - 1;
        break;
    }

    if (color == LED_GREEN)
    {
        // x = 8 - x - 1;
        // Turn on green LED.
        displaybuffer[y] |= 1 << (7 - x);
        // Turn off red LED.
        displaybuffer[y] &= ~(1 << (x + 8));
    }
    else if (color == LED_RED)
    {
        // Turn on red LED.
        displaybuffer[y] |= 1 << (x + 8);
        // Turn off green LED.
        displaybuffer[y] &= ~(1 << (7 - x));
    }
    else if (color == LED_YELLOW)
    {
        // Turn on green and red LED.
        // displaybuffer[y] |= (1 << (x + 8)) | (1 << x);
        displaybuffer[y] |= (1 << (x + 8)) | (1 << (7 - x));
    }
    else if (color == LED_OFF)
    {
        // Turn off green and red LED.
        displaybuffer[y] &= ~(1 << (7 - x)) & ~(1 << (x + 8));
    }
}
// };
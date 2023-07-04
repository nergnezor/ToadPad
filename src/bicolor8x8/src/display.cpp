#include <Adafruit_LEDBackpack.h>
#include "display.h"

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

void Display::init(I2cPins i2cPins, uint8_t address, uint8_t i2cLine)
{

    this->cp437(true);
    this->i2cPins = i2cPins;
    this->address = 0x70 + address;
    // matrix[nKeys] = key;
    auto ok = begin(this->address);
    if (ok)
    {
        // nKeys++;
        // Serial.print(nKeys);
        // Serial.print(". sda: ");
        // Serial.print(i2cLine);
        Serial.print(", adress: ");
        Serial.print(address);
        Serial.println();
        clear();
        setRotation(3);
        if (address == 4 && i2cLine == 0 ||
            address == 5 && i2cLine == 2 ||
            address == 6 && i2cLine == 1 ||
            address == 1 && i2cLine == 2)
        {
            setRotation(1);
        }
        if (address == 1 && i2cLine == 1)
        {
            setRotation(2);
        }
        setBrightness(0);

        // this->drawBitmap(0, 0, smile_bmp, 8, 8, LED_GREEN);

        // setTextColor(LED_GREEN);
        // setCursor(1, 1);
        // print(address);
        setTextColor(LED_RED);
        setCursor(0, 0);
        print(address);
        writeDisplay();
    }
}
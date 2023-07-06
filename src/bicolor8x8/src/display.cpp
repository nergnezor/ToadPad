#include <Adafruit_LEDBackpack.h>
#include "display.h"

static const char *Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
std::vector<Display> Display::displays = std::vector<Display>(N_KEYS);

void Display::draw_shadowed_text(int i)
{
    auto colors = {LED_GREEN, LED_RED, LED_YELLOW};
    auto x_offset = 0;
    this->clear();
    for (auto color : colors)
    {
        this->setTextColor(color);
        this->setCursor(colors.size() - 1 - x_offset++, 0);
        this->print(Alphabet[i]);
    }
}

bool Display::init(I2cPins pins, char address, int count)
{
    i2cPins = pins;
    // address = 0x70 + address;
    cp437(true);
    auto ok = begin(0x70 + address);

    if (!ok)
    {
        Serial.printf("Display %d at pins %d %d failed\n", count, pins.sda, pins.scl);
        return false;
    }
    clear();
    setRotation(3 + *(display_rotation.begin() + count));
    setBrightness(brightness_range.first);
    draw_shadowed_text(count);

    writeDisplay();
    return true;
}

void Display::on_pushed(int i)
{
    Wire.setPins(i2cPins.sda, i2cPins.scl);
    i2c_dev->begin(false);
    draw_shadowed_text(i);
    isPushed = !isPushed;
    auto brightness = isPushed ? brightness_range.second : brightness_range.first;
    setBrightness(brightness);
    writeDisplay();
    i2c_dev->end();
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
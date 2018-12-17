
#include "Adafruit_LEDBackpack.h"
#include <Adafruit_GFX.h>
#include <Wire.h>

class BicolorMatrix_Flipped : public Adafruit_LEDBackpack, public Adafruit_GFX {
public:
    BicolorMatrix_Flipped(void);

    void drawPixel(int16_t x, int16_t y, uint16_t color);

private:
};
BicolorMatrix_Flipped::BicolorMatrix_Flipped(void)
    : Adafruit_GFX(8, 8)
{
}

void BicolorMatrix_Flipped::drawPixel(int16_t x, int16_t y, uint16_t color)
{
/* Changed */
#define _swap_int16_t(a, b) \
    {                       \
        int16_t t = a;      \
        a = b;              \
        b = t;              \
    }
    // x = 8 - x - 1;
    _swap_int16_t(x, y);

    y = 8 - y - 1;
    // if (color == LED_GREEN) color = LED_RED;
    // if (color == LED_RED) color = LED_GREEN;

    /* Changed */

    if ((y < 0) || (y >= 8))
        return;
    if ((x < 0) || (x >= 8))
        return;

    switch (getRotation()) {
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

    if (color == LED_GREEN) {
        // Turn on green LED.
        displaybuffer[y] |= 1 << (x + 8);
        // Turn off red LED.
        // displaybuffer[y] &= ~(1 << (x + 8));
    } else if (color == LED_RED) {
        // Turn on red LED.
        displaybuffer[y] |= 1 << (7 - x);
        // Turn off green LED.
        // displaybuffer[y] &= ~(1 << x);
    } else if (color == LED_YELLOW) {
        // Turn on green and red LED.
        displaybuffer[y] |= (1 << (x + 8)) | (1 << (7 - x));
    } else if (color == LED_OFF) {
        // Turn off green and red LED.
        displaybuffer[y] &= ~(1 << (7 - x)) & ~(1 << (x + 8));
    }
}
BicolorMatrix_Flipped matrix = BicolorMatrix_Flipped();

void setup()
{
    Serial.begin(115200);
    Serial.println("8x8 LED Matrix Test");

    matrix.begin(0x70); // pass in the address
}

static const uint8_t PROGMEM smile_bmp[] = { B00111100, B01000010, B10100101,
    B10000001, B10100101, B10011001,
    B01000010, B00111100 },
                             neutral_bmp[] = { B00111100, B01000010, B10100101,
                                 B10000001, B10111101, B10000001,
                                 B01000010, B00111100 },
                             frown_bmp[] = { B00111100, B01000010, B10100101,
                                 B10000001, B10011001, B10100101,
                                 B01000010, B00111100 };

int circle[] = { 4, 4, 4 };

void loop()
{
    matrix.clear();
    // for (int rot = 0; rot < 4; ++rot) {
    //   matrix.setRotation(rot);
    //   matrix.drawCircle(0, 1, 1, LED_RED);
    //   matrix.drawCircle(0, 1, 2, LED_GREEN);
    // }
    // matrix.writeDisplay();  // write the changes we just made to the display
    // matrix.setRotation(0);

    // delay(500);
    // matrix.clear();
    // matrix.drawBitmap(0, 0, smile_bmp, 8, 8, LED_GREEN);
    // matrix.writeDisplay();
    // delay(500);

    // matrix.clear();
    // matrix.drawBitmap(0, 0, neutral_bmp, 8, 8, LED_YELLOW);
    // matrix.writeDisplay();
    // delay(500);

    // matrix.clear();
    // matrix.drawBitmap(0, 0, frown_bmp, 8, 8, LED_RED);
    // matrix.writeDisplay();
    // delay(500);

    // matrix.clear();  // clear display
    // matrix.drawPixel(0, 0, LED_GREEN);
    // matrix.writeDisplay();  // write the changes we just made to the display
    // delay(500);

    // matrix.clear();
    // matrix.drawLine(0, 0, 7, 7, LED_YELLOW);
    // matrix.writeDisplay();  // write the changes we just made to the display
    // delay(500);

    // matrix.clear();
    // matrix.drawRect(0, 0, 8, 8, LED_RED);
    // matrix.fillRect(2, 2, 4, 4, LED_GREEN);
    // matrix.writeDisplay();  // write the changes we just made to the display
    // delay(500);

    // matrix.clear();
    // matrix.drawCircle(3, 3, 3, LED_YELLOW);
    // matrix.writeDisplay();  // write the changes we just made to the display
    // delay(500);

    // matrix.setTextWrap(false);  // we dont want text to wrap so it scrolls nicely
    // matrix.setTextSize(1);
    // matrix.setTextColor(LED_GREEN);
    // for (int8_t x = 7; x >= -36; x--) {
    //   matrix.clear();
    //   matrix.setCursor(x, 0);
    //   matrix.print("Hello");
    //   matrix.writeDisplay();
    //   delay(100);
    // }
    // matrix.setRotation(3);
    // matrix.setTextColor(LED_RED);
    // for (int8_t x = 7; x >= -36; x--) {
    //   matrix.clear();
    //   matrix.setCursor(x, 0);
    //   matrix.print("World");
    //   matrix.writeDisplay();
    //   delay(100);
    // }

    // matrix.setTextSize(1);
    // matrix.setTextColor(LED_RED);
    // matrix.setCursor(0, 0);
    // matrix.setRotation(0);
    // matrix.print("W");
    // Serial.println(erik);
    // Serial.println("Erik: %d", erik);

    for (int i = 0; i < sizeof(circle); i++) {
        circle[i] += (random(3) - 1);
        if (circle[i] < 0)
            circle[i] = 0;
        if (circle[i] > 8)
            circle[i] = 8;
    }

    int rand[] = { random(3), random(3) };
    int r = 2 + circle[2] / 2;
    matrix.fillCircle(circle[0], circle[1], r, LED_GREEN);
    matrix.fillCircle(circle[0], circle[1], r - 1, LED_YELLOW);
    matrix.fillCircle(circle[0], circle[1], r / 2, LED_OFF);
    matrix.fillCircle(circle[0], circle[1], r / 2, LED_RED);
    // matrix.fillCircle(circle[0], circle[1], r - 4, LED_OFF);
    // matrix.fillRect(2, 2, 4, 4, LED_GREEN);

    matrix.writeDisplay();
    delay(10 + random(200));
}

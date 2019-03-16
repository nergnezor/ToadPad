
// #include "Adafruit_LEDBackpack.h"
#include "src/Adafruit_LED_Backpack_Library/Adafruit_LEDBackpack.h"
#include <Adafruit_GFX.h>
// #include <Wire.h>
#include "src/Wire/Wire.h"

Adafruit_BicolorMatrix matrix[26];
// = Adafruit_BicolorMatrix();
struct I2cPins {
    uint8_t sda;
    uint8_t scl;
};
I2cPins i2cPins[] = {
    { 11, 26 }, { 30, 26 }, { 27, 26 }, { 25, 26 }
};

Adafruit_BicolorMatrix keyscan;
// TwoWire keyscan;

uint8_t keyScanIndex = 3;
uint8_t keyScanArrayIndex = 0;
uint8_t keyScanAddress = 0;
bool keyScanFound = 0;
static int nKeys;
void setup()
{
    Serial.begin(115200);
    for (size_t i = 0; i < 4; i++) {
        for (size_t j = 0; j < 8; j++) {
            //     keyscan.begin(i2cPins[i].sda, i2cPins[i].scl, 0x70 + keyScanAddress);
            //     // keyscan.begin(i2cPins[i].sda, i2cPins[i].scl);
            //     // keyscan.beginTransmission(0x70 + keyScanAddress);
            //     // keyscan.write(0x21); // turn on oscillator

            //     // int result = Wire.endTransmission();
            //     Serial.println(i);
            //     continue;
            // }

            if (matrix[nKeys].begin(i2cPins[i].sda, i2cPins[i].scl, 0x70 + j) == 0) {
                if (i == keyScanIndex && j == keyScanAddress) {
                    Serial.println("KeyScan found");
                    keyScanFound = true;
                    // keyscan.readKeys();
                    // matrix[nKeys].writeDisplay();
                    keyScanArrayIndex = nKeys;
                    ++nKeys;
                    continue;
                    // break;
                }
                matrix[nKeys].clear();
                Serial.print("sda: ");
                Serial.print(i);
                Serial.print(", adress: ");
                Serial.print(j);
                Serial.println();
                matrix[nKeys].setTextSize(1);
                matrix[nKeys].setTextColor(LED_GREEN);
                matrix[nKeys].setCursor(0, 0);
                matrix[nKeys].print(j);
                matrix[nKeys].writeDisplay();
                ++nKeys;
            }
        }
    }
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
int brightness;
void loop()
{
    // matrix.setBrightness(brightness);
    // brightness %= 0x0f;
    // for (int rot = 0; rot < 4; ++rot) {
    //     matrix.setRotation(rot);
    //     matrix.drawCircle(0, 1, 1, LED_RED);
    //     matrix.drawCircle(0, 1, 2, LED_GREEN);
    // }
    // matrix.writeDisplay(); // write the changes we just made to the display
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

    // matrix.clear(); // clear display
    // matrix.drawPixel(0, 0, LED_GREEN);
    // matrix.writeDisplay(); // write the changes we just made to the display
    // delay(500);

    // matrix.clear();
    // matrix.drawLine(0, 0, 7, 7, LED_YELLOW);
    // matrix.writeDisplay(); // write the changes we just made to the display
    // delay(500);

    // matrix.clear();
    // matrix.drawRect(0, 0, 8, 8, LED_RED);
    // matrix.fillRect(2, 2, 4, 4, LED_GREEN);
    // matrix.writeDisplay(); // write the changes we just made to the display
    // delay(500);

    // matrix.clear();
    // matrix.drawCircle(3, 3, 3, LED_YELLOW);
    // matrix.writeDisplay(); // write the changes we just made to the display
    // delay(500);

    // matrix.setTextWrap(false); // we dont want text to wrap so it scrolls nicely
    // matrix.setTextSize(1);
    // matrix.setTextColor(LED_GREEN);
    // for (int8_t x = 7; x >= -36; x--) {
    //     matrix.clear();
    //     matrix.setCursor(x, 0);
    //     matrix.print("Hello");
    //     matrix.writeDisplay();
    //     delay(100);
    // }
    // matrix.setRotation(3);
    // matrix.setTextColor(LED_RED);
    // for (int8_t x = 7; x >= -36; x--) {
    //     matrix.clear();
    //     matrix.setCursor(x, 0);
    //     matrix.print("World");
    //     matrix.writeDisplay();
    //     delay(100);
    // }

    // matrix.setTextSize(1);
    // matrix.setTextColor(LED_RED);
    // matrix.setCursor(0, 0);
    // matrix.setRotation(0);
    // matrix.print("W");

    // for (int i = 0; i < sizeof(circle); i++) {
    //     circle[i] += (random(3) - 1);
    //     if (circle[i] < 0)
    //         circle[i] = 0;
    //     if (circle[i] > 8)
    //         circle[i] = 8;
    // }

    // int rand[] = { random(3), random(3) };
    // int r = 2 + circle[2] / 2;

    // for (size_t i = 0; i < nKeys; i++) {
    //     // matrix[i].begin(i2cPins[i].sda, i2cPins[i].scl, 0x70); // pass in the address

    //     matrix[i].clear();
    //     matrix[i].fillCircle(circle[0], circle[1], r, LED_GREEN);
    //     matrix[i].fillCircle(circle[0], circle[1], r - 1, LED_YELLOW + i);
    //     matrix[i].fillCircle(circle[0], circle[1], r / 2, LED_OFF);
    //     matrix[i].fillCircle(circle[0], circle[1], r / 2, LED_RED + i);
    //     matrix[i].writeDisplay();
    //     for (size_t i = 0; i < 8; i++)
    //     /* code */
    //     {
    //     }
    //     /* code */
    // }
    // keyscan.r
    matrix[keyScanArrayIndex].readKeys();
    delay(30);
}

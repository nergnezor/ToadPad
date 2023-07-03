#include <Adafruit_GFX.h>
#include <Adafruit_LEDBackpack.h>
#include <Wire.h>
#include "src/fonts.h"

const GFXfont *font = &Roboto_Mono_Thin_8;
struct I2cPins
{
    uint8_t sda;
    uint8_t scl;
};
I2cPins i2cPins[] = {
    {11, 26}, {30, 26}, {27, 26}, {25, 26}};

class Display : public Adafruit_BicolorMatrix
{
public:
    void drawPixel(int16_t x, int16_t y, uint16_t color)
    {
        if ((y < 0) || (y >= 8))
            return;
        if ((x < 0) || (x >= 8))
            return;

        // switch (getRotation())
        // {
        // case 1:
        //     _swap_int16_t(x, y);
        //     x = 8 - x - 1;
        //     break;
        // case 2:
        //     x = 8 - x - 1;
        //     y = 8 - y - 1;
        //     break;
        // case 3:
        //     _swap_int16_t(x, y);
        //     y = 8 - y - 1;
        //     break;
        // }

        // Override drawing to align colors
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
};

constexpr uint8_t NCols = 5;
static const uint8_t keyScanIndex = 3;
static const uint8_t keyScanAddress = 0;

void readKeys()
{
    static const int ReadSize = 6;
    static byte keyCode[ReadSize];
    int result = 0;
    Wire.setPins(i2cPins[keyScanIndex].sda, i2cPins[keyScanIndex].scl);
    auto i2c_addr = 0x70 + keyScanAddress;
    Wire.beginTransmission(i2c_addr);
    Wire.write(0x40); // start at address $00
    result = Wire.endTransmission();
    uint8_t length = Wire.requestFrom(i2c_addr, 6); // request 6 bytes from slave device #2

    bool changed = false;
    for (int i = 0; Wire.available(); ++i) // slave may send less than requested
    {
        byte c = Wire.read(); // receive a byte as character
        if (keyCode[i] != c)
        {
            changed = true;
        }
        keyCode[i] = c;
    }
    if (changed)
    {
        for (size_t i = 0; i < ReadSize; i++)
        {
            for (int bit = 0; bit < 8; bit++)
            {
                if (keyCode[i] & (0x01 << bit))
                {
                    byte index = i * 8 + bit;
                    if (index == 41)
                    {
                        continue;
                    }

                    Serial.println(index); // print the character
                }
            }
        }
    }
}
// };
constexpr uint8_t N_KEYS = 25;
Display matrix[N_KEYS];
// Display *keyscan;

static const char *Qwerty = "qwertyuiopasdfghjklzxcvbnm";

uint8_t keyScanArrayIndex = 0;
bool keyScanFound = 0;
static int nKeys;

void setup()
{
    Serial.begin(115200);
    Serial.println("Hello!");
    for (size_t i2cLine = 0; i2cLine < 4; i2cLine++)
    {
        Wire.setPins(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);
        for (size_t address = 0; address < 8; address++)
        {
            Display *key = &matrix[nKeys];
            // if (key->begin(0x70 + address) == 0)
            key->begin(0x70 + address);
            {

                if (i2cLine == keyScanIndex && address == keyScanAddress)
                {
                    Serial.println("KeyScan found!");
                    keyScanFound = true;
                    continue;
                }
                ++nKeys;
                key->clear();
                Serial.print(nKeys);
                Serial.print(". sda: ");
                Serial.print(i2cLine);
                Serial.print(", adress: ");
                Serial.print(address);
                Serial.println();
                key->setRotation(0);
                key->setRotation(3);
                if (nKeys % NCols == 0)
                {
                    // key->setRotation(1);
                }
                key->setBrightness(100);

                key->setTextColor(LED_RED);
                key->setCursor(1, 1);
                key->print(address);
                // key->setTextColor(LED_YELLOW);
                // key->setCursor(2, 1);
                // key->print(address);
                key->setRotation(0);
                key->setTextColor(LED_GREEN);
                key->setCursor(2, 1);
                key->print(address);
                key->writeDisplay();

                if (nKeys >= N_KEYS)
                    return;
            }
        }
    }
}

static const uint8_t PROGMEM smile_bmp[] = {B00111100, B01000010, B10100101,
                                            B10000001, B10100101, B10011001,
                                            B01000010, B00111100},
                             neutral_bmp[] = {B00111100, B01000010, B10100101,
                                              B10000001, B10111101, B10000001,
                                              B01000010, B00111100},
                             frown_bmp[] = {B00111100, B01000010, B10100101,
                                            B10000001, B10011001, B10100101,
                                            B01000010, B00111100};

int circle[] = {4, 4, 4};
int brightness;
void loop()
{
    readKeys();
    delay(30);
}

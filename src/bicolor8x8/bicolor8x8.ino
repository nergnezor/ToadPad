#include <Adafruit_LEDBackpack.h>
#include "src/fonts.h"
#include "src/display.h"

const GFXfont *font = &Roboto_Mono_Thin_8;

I2cPins i2cPins[] = {
    {11, 26}, {30, 26}, {27, 26}, {25, 26}};

constexpr uint8_t NCols = 5;
static const uint8_t keyScanIndex = 3;
static const uint8_t keyScanAddress = 0;
static bool first = true;
int readKeys()
{
    static const int ReadSize = 6;
    static byte keyCode[ReadSize];
    int result = 0;
    Wire.setPins(i2cPins[keyScanIndex].sda, i2cPins[keyScanIndex].scl);
    auto i2c_addr = 0x70 + keyScanAddress;
    Wire.begin();
    Wire.beginTransmission(i2c_addr);
    Wire.write(0x40); // start at address $00
    result = Wire.endTransmission();
    uint8_t length = Wire.requestFrom(i2c_addr, 6); // request 6 bytes from slave device #2

    bool changed = false;
    int index = -1;
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
                    index = i * 8 + bit;
                    if (index == 41)
                    {
                        continue;
                    }
                    return index;
                }
            }
        }
    }
    Wire.end();
    return index;
}

constexpr uint8_t N_KEYS = 25;
static Display matrix[N_KEYS];
static Display keyscan;

static const char *Qwerty = "qwertyuiopasdfghjklzxcvbnm";

uint8_t keyScanArrayIndex = 0;
bool keyScanFound = 0;
static int nKeys;

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
static bool initialized = false;

void setup()
{
    Serial.begin(115200);
    Serial.println("Hej");
    for (size_t i2cLine = 0; i2cLine < 4; i2cLine++)
    {
        Wire.setPins(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);
        for (size_t address = 0; address < 8; address++)
        {
            Display *key;
            if (i2cLine == keyScanIndex && address == keyScanAddress)
            {
                Serial.println("KeyScan found!");
                keyScanFound = true;
                key = &keyscan;
                continue;
            }
            if (nKeys >= N_KEYS)
                break;
            key = &matrix[nKeys];
            key->cp437(true);
            key->i2cPins = i2cPins[i2cLine];
            key->address = 0x70 + address;
            // matrix[nKeys] = key;
            auto ok = key->begin(key->address);
            if (ok)
            {
                nKeys++;
                key->clear();
                Serial.print(nKeys);
                Serial.print(". sda: ");
                Serial.print(i2cLine);
                Serial.print(", adress: ");
                Serial.print(address);
                Serial.println();
                key->setRotation(3);
                if (address == 4 && i2cLine == 0 ||
                    address == 5 && i2cLine == 2 ||
                    address == 6 && i2cLine == 1 ||
                    address == 1 && i2cLine == 2)
                {
                    key->setRotation(1);
                }
                if (address == 1 && i2cLine == 1)
                {
                    key->setRotation(2);
                }
                key->setBrightness(0);

                // key->drawBitmap(0, 0, smile_bmp, 8, 8, LED_GREEN);

                key->setTextColor(LED_GREEN);
                key->setCursor(1, 1);
                key->print(nKeys % 10);
                key->setTextColor(LED_RED);
                key->setCursor(0, 0);
                key->print(Qwerty[nKeys]);
                key->writeDisplay();
            }
        }
    }
    Serial.println("Done!");
    initialized = true;
}

int brightness;
void loop()
{
    int i = readKeys();
    if (i >= 0)
    {
        Serial.println(i); // print the character
        if (i < N_KEYS)
        {
            auto key = &matrix[i];
            auto i2c = key->get_i2c_device();
            Wire.setPins(key->i2cPins.sda, key->i2cPins.scl);
            i2c->begin(false);
            // key->clear();
            // key->setRotation(3);
            // key->setCursor(0, 0);
            // key->setTextColor(LED_GREEN);
            // key->print(Qwerty[i]);
            // key->writeDisplay();
            // key->endWrite();
            key->setBrightness(15);
            i2c->end();
        }
    }
    delay(30);
}

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

static const uint8_t NCols = 5;
static const uint8_t keyScanIndex = 3;
static const uint8_t keyScanAddress = 0;
class Display : public Adafruit_BicolorMatrix
{
public:
    void readKeys()
    {
        static const int ReadSize = 6;
        static byte keyCode[ReadSize];
        // static uint64_t keyCode;
        int result = 0;
        Wire.setPins(i2cPins[keyScanIndex].sda, i2cPins[keyScanIndex].scl);
        // Wire.setSda(i2c_sda);
        // auto wire = new TwoWire();
        auto i2c_addr = 0x70 + keyScanAddress;
        Wire.beginTransmission(i2c_addr);
        // wire.beginTransmission(i2c_addr);
        Wire.write(0x40); // start at address $00
        // wire.write(0x40); // start at address $00
        // wire.endTransmission();
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
            // Serial.println("press"); // print the character
            // keyCode = keys;
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
};

Adafruit_BicolorMatrix matrix[26];
Display *keyscan;

static const char *Qwerty = "qwertyuiopasdfghjklzxcvbnm";

uint8_t keyScanArrayIndex = 0;
bool keyScanFound = 0;
static int nKeys;

void setup()
{
    Serial.begin(115200);
    Serial.println("Hello!");
    // auto &wire = TwoWire::begin(0, 1);

    for (size_t i2cLine = 0; i2cLine < 4; i2cLine++)
    {
        // NRF_TWIM_Type *twim = (NRF_TWIM_Type *)NRF_TWIM0_BASE + i2cLine;
        // NRF_TWIS_Type *twis = (NRF_TWIS_Type *)NRF_TWIS0_BASE + i2cLine;
        // IRQn_Type irq = (IRQn_Type)(0);
        // TwoWire wire = TwoWire.begin(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);

        // auto wire = TwoWire(0, 0, 0, i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);
        // auto wire = TwoWire();
        // wire.begin(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);

        for (size_t address = 0; address < 8; address++)
        {
            Adafruit_BicolorMatrix *key = &matrix[nKeys];
            // wire.begin(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl, 0x70 + address);
            // auto wire = Wire();
            // wire.begin(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);
            // wire.setSlave(address);
            // if (key->begin(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl, 0x70 + address) == 0)
            Wire.setPins(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);
            key->begin(0x70 + address);
            // if (key->begin(0x70 + address) == 0)
            {
                ++nKeys;
                if (i2cLine == keyScanIndex && address == keyScanAddress)
                {
                    Serial.println("KeyScan found!");
                    keyScanFound = true;
                    keyscan = (Display *)key;
                    // keyScanArrayIndex = nKeys;
                    continue;
                }
                // continue;
                key->clear();
                Serial.print("sda: ");
                Serial.print(i2cLine);
                Serial.print(", adress: ");
                Serial.print(address);
                Serial.println();
                key->setRotation(0);
                key->setRotation(3);
                if (nKeys % NCols == 0)
                {
                    key->setRotation(1);
                }
                // key->drawRect(0, 0, 8, 8, LED_YELLOW);
                // key->drawRect(0, 0, 8, 8, LED_RED);
                key->setBrightness(0);
                // key->setTextSize(1);
                // key->setFont(font);
                // key->setTextColor(LED_RED);
                // for (size_t i = LED_RED; i <= LED_GREEN; i++) {
                /* code */

                // key->setTextColor(LED_GREEN);
                // key->setCursor(1, 0);
                // key->print(address);
                key->setTextColor(LED_RED);
                key->setCursor(1, 1);
                key->print(address);
                key->setTextColor(LED_GREEN);
                key->setCursor(2, 1);
                key->print(address);
                // key->setTextColor(i);
                // key->setCursor(0, 2);
                // }
                // key->print(address);
                // key->print(Qwerty[nKeys - 1]);
                // key->print(char(0x40 + nKeys));
                // key->print(nKeys);
                key->writeDisplay();
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

    // for (int i2cLine = 0; i2cLine < sizeof(circle); i2cLine++) {
    //     circle[i2cLine] += (random(3) - 1);
    //     if (circle[i2cLine] < 0)
    //         circle[i2cLine] = 0;
    //     if (circle[i2cLine] > 8)
    //         circle[i2cLine] = 8;
    // }

    // int rand[] = { random(3), random(3) };
    // int r = 2 + circle[2] / 2;

    // for (size_t i2cLine = 0; i2cLine < nKeys; i2cLine++) {
    //     // matrix[i2cLine].begin(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl, 0x70); // pass in the address

    //     matrix[i2cLine].clear();
    //     matrix[i2cLine].fillCircle(circle[0], circle[1], r, LED_GREEN);
    //     matrix[i2cLine].fillCircle(circle[0], circle[1], r - 1, LED_YELLOW + i2cLine);
    //     matrix[i2cLine].fillCircle(circle[0], circle[1], r / 2, LED_OFF);
    //     matrix[i2cLine].fillCircle(circle[0], circle[1], r / 2, LED_RED + i2cLine);
    //     matrix[i2cLine].writeDisplay();
    //     for (size_t i2cLine = 0; i2cLine < 8; i2cLine++)
    //     /* code */
    //     {
    //     }
    //     /* code */
    // }
    // keyscan.r
    keyscan->readKeys();
    delay(30);
}

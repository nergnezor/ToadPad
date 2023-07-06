#include <Adafruit_LEDBackpack.h>
#include "src/fonts.h"
#include "src/display.h"

const GFXfont *font = &Roboto_Mono_Thin_8;

I2cPins i2c_pins[] = {
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
    Wire.setPins(i2c_pins[keyScanIndex].sda, i2c_pins[keyScanIndex].scl);
    auto i2c_addr = 0x70 + keyScanAddress;

    Wire.begin();
    Wire.beginTransmission(i2c_addr);
    Wire.write(0x40); // start at address $00
    result = Wire.endTransmission();
    uint8_t length = Wire.requestFrom(i2c_addr, 6); // request 6 bytes from slave device #2
    Wire.end();

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
                    return index;
                }
            }
        }
    }
    return index;
}

static int nKeys;

void setup()
{
    Serial.begin(115200);
    Serial.println("Hej");
    for (size_t line = 0; line < 4; line++)
    {
        Wire.setPins(i2c_pins[line].sda, i2c_pins[line].scl);
        for (size_t address = 0; address < 8; address++)
        {
            if (line == keyScanIndex && address == keyScanAddress)
            {
                Serial.print("KeyScan found at ");
                Serial.print(line);
                Serial.print(" ");
                Serial.println(address);
                continue;
            }
            if (nKeys >= N_KEYS)
                break;

            auto index = Display::get_index(nKeys++);
            Display *display = &Display::displays[index];

            display->i2cPins = i2c_pins[line];
            display->address = 0x70 + address;

            display->init(line, index);
        }
    }
    Serial.println("Found " + String(nKeys) + " keys");
}

int brightness;
void loop()
{
    int i = readKeys();
    if (i >= 0)
    {
        if (i > 9)
            i -= 6;
        if (i > 25)
            i -= 6;
        Serial.println(i); // print the character
        if (i < N_KEYS)
        {
            auto key = &Display::displays[i];
            auto i2c = key->get_i2c_device();
            Wire.setPins(key->i2cPins.sda, key->i2cPins.scl);
            i2c->begin(false);
            key->draw_shadowed_text(i);
            key->isPushed = !key->isPushed;
            auto brightness = key->isPushed ? key->brightness_range.second : key->brightness_range.first;
            key->setBrightness(brightness);
            key->writeDisplay();
            i2c->end();
        }
    }
    // Serial.print(".");
    delay(50);
}

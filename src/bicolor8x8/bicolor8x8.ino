#include <Adafruit_LEDBackpack.h>
#include "src/fonts.h"
#include "src/display.h"
namespace std
{
    void __throw_length_error(char const *)
    {
    }
}
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
constexpr uint8_t N_KEYS = 25;
#include <vector>
static std::vector<Display> matrix = std::vector<Display>(N_KEYS);
// constexpr std::initializer_list<uint8_t> display_order = {
//     17, 1, 2, 3, 4,     // A B C D E | r x x x x
//     5, 6, 7, 8, 9,      // F G H I J
//     16, 11, 12, 13, 14, // K L M N O
//     15, 0, 24, 10, 0,   // P Q R S T | x x x x a
//     21, 19, 20, 22, 23  // U V W X Y
// };
constexpr std::initializer_list<uint8_t> display_order = {
    17, 1, 2, 3, 4,     // A B C D E | r x x x x
    5, 6, 7, 8, 9,      // F G H I J
    11, 12, 13, 14, 15, // K L M N O
    24, 16, 0, 21, 19,  // P Q R S T | x x x v a
    20, 22, 23, 5, 24   // U V W X Y
};

static const char *Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

static int nKeys;

void setup()
{
    Serial.begin(115200);
    Serial.println("Hej");
    for (size_t i2cLine = 0; i2cLine < 4; i2cLine++)
    {
        Wire.setPins(i2cPins[i2cLine].sda, i2cPins[i2cLine].scl);
        for (size_t address = 0; address < 8; address++)
        {
            if (i2cLine == keyScanIndex && address == keyScanAddress)
            {
                Serial.println("KeyScan found!");
                continue;
            }
            if (nKeys >= N_KEYS)
                break;

            // auto d = Display();

            // Display *key = &d;
            // matrix.push_back(d);
            auto index = display_order.begin() + nKeys;
            Display *key = &matrix[*index];
            key->cp437(true);
            key->i2cPins = i2cPins[i2cLine];
            key->address = 0x70 + address;
            // matrix[nKeys] = key;
            auto ok = key->begin(key->address);
            if (ok)
            {
                key->clear();
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

                // key->setTextColor(LED_GREEN);
                // key->setCursor(1, 1);
                // key->print(nKeys % 10);
                auto colors = {LED_RED, LED_YELLOW, LED_GREEN};
                auto x_offset = 0;
                for (auto color : colors)
                {

                    key->setTextColor(color);
                    key->setCursor(colors.size() - 1 - x_offset++, 0);
                    key->print(Alphabet[*index]);
                }
                key->writeDisplay();
                nKeys++;
                if (nKeys >= N_KEYS)
                    break;
            }
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
            key->isPushed = !key->isPushed;
            auto brightness = key->isPushed ? 15 : 0;
            key->setBrightness(brightness);
            i2c->end();
        }
    }
    // Serial.print(".");
    delay(100);
}

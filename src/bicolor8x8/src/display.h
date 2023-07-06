#include <utility>
#include <vector>

constexpr uint8_t N_KEYS = 25;

struct I2cPins
{
    uint8_t sda;
    uint8_t scl;
};
class Display : public Adafruit_BicolorMatrix
{
    void drawPixel(int16_t x, int16_t y, uint16_t color);

public:
    static std::vector<Display> displays;
    I2cPins i2cPins;
    uint8_t address;
    bool isPushed = false;
    std::pair<int, int> brightness_range = {0, 10};

    Adafruit_I2CDevice *get_i2c_device();
    void draw_shadowed_text(int c);
    void init(int line, int count);
};
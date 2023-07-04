struct I2cPins
{
    uint8_t sda;
    uint8_t scl;
};
class Display : public Adafruit_BicolorMatrix
{
    void drawPixel(int16_t x, int16_t y, uint16_t color);

public:
    I2cPins i2cPins;
    uint8_t address;
    Adafruit_I2CDevice *get_i2c_device();
    void init(I2cPins i2cPins, uint8_t address, uint8_t i2cLine);
};
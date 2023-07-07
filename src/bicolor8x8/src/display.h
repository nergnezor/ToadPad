#include <Adafruit_LEDBackpack.h>

#include <vector>

#include "display_config.h"

constexpr uint8_t N_KEYS = 25;

struct I2cPins {
  uint8_t sda;
  uint8_t scl;
};
class Display : public Adafruit_BicolorMatrix {
  void drawPixel(int16_t x, int16_t y, uint16_t color);
  I2cPins i2cPins;
  void draw_shadowed_text();

 public:
  bool isPushed = false;
  std::pair<int, int> brightness_range = {0, 10};

  static std::vector<Display> displays;
  static int get_index(int found_index) {
    return *(display_order.begin() + found_index);
  };

  bool init(I2cPins pins, char address, int count);
  void on_pushed();
};
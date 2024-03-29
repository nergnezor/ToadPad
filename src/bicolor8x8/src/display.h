#include <Adafruit_LEDBackpack.h>

#include <vector>

#include "display_config.h"
enum Color {
  Off = LED_OFF,
  Red = LED_RED,
  Yellow = LED_YELLOW,
  Green = LED_GREEN,
};
struct Point {
  int x;
  int y;
};
constexpr uint8_t N_KEYS = 25;
constexpr uint8_t N_COLS = 5;

struct I2cPins {
  uint8_t sda;
  uint8_t scl;
};
class Display : public Adafruit_BicolorMatrix {
  I2cPins i2cPins;

 public:
  static void draw_big_rect(int x, int y, int w, int h, uint16_t color);
  void drawPixel(int16_t x, int16_t y, uint16_t color);
  void draw_shadowed_text();
  void start_draw();
  void end_draw();
  void draw_rect();
  // char color = LED_YELLOW;
  bool isPushed = false;
  std::pair<int, int> brightness_range = {0, 10};

  static std::vector<Display> displays;
  static int get_index(int found_index) {
    return *(Config::display_order.begin() + found_index);
  };

  bool init(I2cPins pins, char address, int count);
  void on_pushed();
};
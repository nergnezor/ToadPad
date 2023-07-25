#include "display.h"

#include <algorithm>
#include <vector>
namespace std {
void __throw_length_error(char const *) {}
}  // namespace std
std::vector<Display> Display::displays = std::vector<Display>(N_KEYS);

struct Rect {
  Point pos;
  Point size;
};
namespace {
constexpr char alphabet[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
Rect rect;
auto changed = std::vector<char>();
}  // namespace
void Display::draw_shadowed_text() {
  int i = this - &displays[0];
  Serial.println(i);
  auto colors = {LED_GREEN, LED_RED, LED_YELLOW};
  auto x_offset = 0;
  for (auto color : colors) {
    setTextColor(color);
    setCursor(colors.size() - 1 - x_offset++, 0);
    print(alphabet[i]);
  }
  writeDisplay();
}

struct Pixel {
  Point pos;
  Color color;
};

void Display::draw_big_rect(int x, int y, int w, int h, uint16_t color) {
  // if (rect.size.x > 0 && color != LED_OFF) {
  //   draw_big_rect(rect.pos.x, rect.pos.y, rect.size.x, rect.size.y, LED_OFF);
  // }
  auto new_rect = Rect{{x, y}, {w, h}};
  rect = Rect{{x, y}, {w, h}};

  // Clear displays not in new rect

  // Every display has 8x8 pixels.
  // Draw a rectangle on all affected displays.

  auto top_left_display_index = x / Config::display_pixel_width +
                                y / Config::display_pixel_height * N_COLS;
  auto bottom_right_display_index =
      (x + w) / Config::display_pixel_width +
      (y + h) / Config::display_pixel_height * N_COLS;

  Point top_left = {top_left_display_index % N_COLS,
                    top_left_display_index / N_COLS};
  Point bottom_right = {bottom_right_display_index % N_COLS,
                        bottom_right_display_index / N_COLS};
  auto new_changed = std::vector<char>();
  for (auto row = top_left.y; row <= bottom_right.y; row++)
    for (auto column = top_left.x; column <= bottom_right.x; column++) {
      auto index = row * N_COLS + column;
      if (index < 0 || index >= N_KEYS) continue;
      auto d = &displays[index];

      auto local_x = x - column * Config::display_pixel_width;
      auto local_y = y - row * Config::display_pixel_height;

      Wire.setPins(d->i2cPins.sda, d->i2cPins.scl);
      d->i2c_dev->begin(false);
      d->clear();
      d->drawRect(local_x, local_y, w, h, color);
      d->writeDisplay();
      d->i2c_dev->end();
      new_changed.push_back(index);

      // Remove index from changed

      auto it = std::find(changed.begin(), changed.end(), index);
      if (it != changed.end()) changed.erase(it);
    }

  for (auto i : changed) {
    auto d = &displays[i];
    Wire.setPins(d->i2cPins.sda, d->i2cPins.scl);
    d->i2c_dev->begin(false);
    d->clear();
    d->writeDisplay();
    d->i2c_dev->end();
  }
  changed = std::move(new_changed);
}

void Display::draw_rect() {
  drawRoundRect(0, 0, 8, 8, 2, LED_GREEN);
  if (isPushed) fillRect(1, 1, 6, 6, LED_YELLOW);

  writeDisplay();
}

bool Display::init(I2cPins pins, char address, int count) {
  i2cPins = pins;
  if (!begin(0x70 + address)) return false;
  int rotation = Config::rotate_vertical ? 1 : 3;
  setRotation(rotation + *(Config::display_rotation.begin() + count));
  setBrightness(brightness_range.first);
  //   draw_rect();
  return true;
}

void Display::on_pushed() {
  start_draw();
  clear();
  // if (isPushed) draw_shadowed_text();
  draw_rect();
  isPushed = !isPushed;
  end_draw();
}

void Display::start_draw() {
  Wire.setPins(i2cPins.sda, i2cPins.scl);
  i2c_dev->begin(false);
}
void Display::end_draw() { i2c_dev->end(); }

void Display::drawPixel(int16_t x, int16_t y, uint16_t color) {
  if ((y < 0) || (y >= 8)) return;
  if ((x < 0) || (x >= 8)) return;
#define swap(a, b) \
  {                \
    int16_t t = a; \
    (a) = b;       \
    (b) = t;       \
  }  ///< 16-bit var swap
  switch (getRotation()) {
    case 1:
      swap(x, y);
      x = 8 - x - 1;
      break;
    case 2:
      x = 8 - x - 1;
      y = 8 - y - 1;
      break;
    case 3:
      swap(x, y);
      y = 8 - y - 1;
      break;
  }

  switch (color) {
    case LED_GREEN:
      displaybuffer[y] |= 1 << (7 - x);
      break;
    case LED_RED:
      displaybuffer[y] |= 1 << (x + 8);
      break;
    case LED_YELLOW:
      //   // Turn on green and red LED.
      displaybuffer[y] |= (1 << (x + 8)) | (1 << (7 - x));
      break;
    case LED_OFF:
      //   // Turn off green and red LED.
      displaybuffer[y] &= ~(1 << (7 - x)) & ~(1 << (x + 8));
      break;
  }
}
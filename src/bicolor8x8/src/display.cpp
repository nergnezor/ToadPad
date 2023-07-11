#include "display.h"
std::vector<Display> Display::displays = std::vector<Display>(N_KEYS);
std::vector<Display> changed = std::vector<Display>();
struct Point {
  int x;
  int y;
};
struct Rect {
  Point pos;
  Point size;
};
namespace {
constexpr char alphabet[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
Rect rect;
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
enum Color {
  Off = LED_OFF,
  Red = LED_RED,
  Yellow = LED_YELLOW,
  Green = LED_GREEN,
};
struct Pixel {
  Point pos;
  Color color;
};
static std::vector<Pixel> get_changed_pixels(Rect new_rect, Rect old_rect,
                                             Color color) {
  std::vector<Pixel> pixels;
  // Find the pixels that are in the new, unfilled rect but not in the old rect.
  for (auto x = new_rect.pos.x; x < new_rect.pos.x + new_rect.size.x; x++)
    for (auto y = new_rect.pos.y; y < new_rect.pos.y + new_rect.size.y; y++) {
      if (old_rect.size.x > 0 ){
      if (x >= old_rect.pos.x && x < old_rect.pos.x + old_rect.size.x &&
          y >= old_rect.pos.y && y < old_rect.pos.y + old_rect.size.y)
        continue;}
      pixels.push_back({{x, y}, color});
    }
  // Find the pixels that are in the old rect but not in the new rect.
  // for (auto x = old_rect.pos.x; x < old_rect.pos.x + old_rect.size.x; x++)
  //   for (auto y = old_rect.pos.y; y < old_rect.pos.y + old_rect.size.y; y++)
  //   {
  //     if (x >= new_rect.pos.x && x < new_rect.pos.x + new_rect.size.x &&
  //         y >= new_rect.pos.y && y < new_rect.pos.y + new_rect.size.y)
  //       continue;
  //     pixels.push_back({{x, y}, Off});
  //   }

  return pixels;
}
void Display::draw_big_rect(int x, int y, int w, int h, uint16_t color) {
  // if (rect.size.x > 0 && color != LED_OFF) {
  //   draw_big_rect(rect.pos.x, rect.pos.y, rect.size.x, rect.size.y, LED_OFF);
  // }
  // for (auto c : changed) {
  //   Wire.setPins(c.i2cPins.sda, c.i2cPins.scl);
  //   c.i2c_dev->begin(false);
  //   c.clear();
  //   c.writeDisplay();
  //   c.i2c_dev->end();
  // }
  // changed.clear();
  auto new_rect = Rect{{x, y}, {w, h}};
  auto changed_pixels = get_changed_pixels(new_rect, rect, (Color)color);
  Serial.println(changed_pixels.size());
  rect = Rect{{x, y}, {w, h}};

  // Draw the changed pixels on the affected displays.
  // for (auto pixel : changed_pixels) {
  //   auto display_index = pixel.pos.x / display_pixel_width +
  //                        pixel.pos.y / display_pixel_height * N_COLS;
  //   auto d = &displays[display_index];
  //   Wire.setPins(d->i2cPins.sda, d->i2cPins.scl);
  //   d->i2c_dev->begin(false);
  //   d->clear();
  //   d->drawPixel(pixel.pos.x % display_pixel_width,
  //                pixel.pos.y % display_pixel_height, pixel.color);
  //   d->writeDisplay();
  //   d->i2c_dev->end();
  //   changed.push_back(*d);
  // }
  // // Every display has 8x8 pixels.
  // // Draw a rectangle on all affected displays.

  // auto top_left_display_index =
  //     x / display_pixel_width + y / display_pixel_height * N_COLS;
  // auto bottom_right_display_index =
  //     (x + w) / display_pixel_width + (y + h) / display_pixel_height *
  //     N_COLS;

  // Point top_left = {top_left_display_index % N_COLS,
  //                   top_left_display_index / N_COLS};
  // Point bottom_right = {bottom_right_display_index % N_COLS,
  //                       bottom_right_display_index / N_COLS};

  // for (auto row = top_left.y; row <= bottom_right.y; row++)
  //   for (auto column = top_left.x; column <= bottom_right.x; column++) {
  //     auto index = row * N_COLS + column;
  //     if (index < 0 || index >= N_KEYS) continue;
  //     auto d = &displays[index];

  //     auto local_x = x - column * display_pixel_width;
  //     auto local_y = y - row * display_pixel_height;

  //     Wire.setPins(d->i2cPins.sda, d->i2cPins.scl);
  //     d->i2c_dev->begin(false);
  //     d->clear();
  //     d->drawRect(local_x, local_y, w, h, color);
  //     d->writeDisplay();
  //     d->i2c_dev->end();
  //     changed.push_back(*d);
  //   }
}

void Display::draw_rect() {
  drawRoundRect(0, 0, 8, 8, 2, LED_GREEN);
  if (isPushed) fillRect(1, 1, 6, 6, LED_YELLOW);

  writeDisplay();
}

bool Display::init(I2cPins pins, char address, int count) {
  i2cPins = pins;
  if (!begin(0x70 + address)) return false;
  setRotation(3 + *(display_rotation.begin() + count));
  setBrightness(brightness_range.first);
  //   draw_rect();
  return true;
}

void Display::on_pushed() {
  Wire.setPins(i2cPins.sda, i2cPins.scl);
  i2c_dev->begin(false);
  isPushed = !isPushed;
  clear();
  // if (isPushed) draw_shadowed_text();
  draw_rect();
  i2c_dev->end();
}

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
#include "draw.h"

#include <stdint.h>

#include "../images/lego.h"
#include "../images/rgb.h"
#include "display.h"
enum Axis { X, Y };

static void animate_line(Display& d, Axis axis, int start, int end,
                         int other_axis, int color) {
  int iterator = start < end ? 1 : -1;
  for (int i = start; i != end; i += iterator) {
    if (axis == X)
      d.drawPixel(i, other_axis, color);
    else
      d.drawPixel(other_axis, i, color);
    d.writeDisplay();
    delay(1);
  }
}

constexpr int N_CHANNELS = 3;

void full_image(const uint8_t* image) {
  // int x = 0;
  // int y = 0;
  Point display_pos = {0, 0};
  for (auto& d : Display::displays) {
    d.start_draw();
    d.clear();
    for (int i = 0; i < display_pixel_width; ++i) {
      for (int j = 0; j < display_pixel_height; ++j) {
        Point pixel = {
            display_pos.x * display_pixel_width * N_CHANNELS + i * N_CHANNELS,
            display_pos.y * display_pixel_height + j};
        int index =
            pixel.y * display_pixel_width * N_CHANNELS * N_COLS + pixel.x;

        // Get highest color value
        Color color;
        int max = 0;
        for (int k = 0; k < 3; ++k) {
          // auto value = image[pixel.y  +
          //                    pixel.x + k];
          auto value = image[index + k];
          if (value > max) {
            max = value;
            switch (k) {
              case 0:
                color = Red;
                break;
              case 1:
                color = Green;
                break;
              case 2:
                color = Yellow;
                break;
            }
          }
        }
        d.drawPixel(i, j, color);
        Serial.print(color);
      }
      Serial.println();
    }
    d.writeDisplay();
    d.end_draw();

    if (display_pos.x == N_COLS - 1) {
      display_pos.x = 0;
      display_pos.y++;
    } else {
      display_pos.x++;
    }
  }
}
void Draw::init() { full_image(lego); };

void swirl() {
  for (auto& d : Display::displays) {
    d.start_draw();
    int min = 0;
    int max = display_pixel_width - 1;
    auto c = (int)Red;
    do {
      animate_line(d, X, min, max, min, c);
      animate_line(d, Y, min, max, max, c);
      animate_line(d, X, max, min, max, c);
      animate_line(d, Y, max, min, min, c);
      ++c;
      ++min;
      --max;
    } while (max - min > 1);
    d.end_draw();
  }
}

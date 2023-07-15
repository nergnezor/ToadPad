#include "draw.h"

#include "display.h"

enum Axis { X, Y };

static void animate_line(Display& d, Axis axis, int start, int end,
                         int other_axis, Color color) {
  int iterator = start < end ? 1 : -1;
  for (int i = start; i != end; i += iterator) {
    if (axis == X)
      d.drawPixel(i, other_axis, color);
    else
      d.drawPixel(other_axis, i, color);
    d.writeDisplay();
    delay(5);
  }
}
void Draw::init() {
  for (auto& d : Display::displays) {
    d.start_draw();
    int min = 0;
    int max = display_pixel_width - 1;
    Color c = Red;
    animate_line(d, X, min, max, min, c);
    animate_line(d, Y, min, max, max, c);
    animate_line(d, X, max, min, max, c);
    animate_line(d, Y, max, min, min, c);

    d.end_draw();
  }
};

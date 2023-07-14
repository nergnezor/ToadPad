#include "draw.h"

#include "display.h"

void Draw::init() {
  for (auto& d : Display::displays) {
    d.on_pushed();
    // d.start_draw();
    // // const char* c = "e";
    // // d.drawChar(0, 0, *c, 1, 1, 8);
    // // Serial.println(&d - &Display::displays[0]);
    // // d.draw_shadowed_text();
    // // d.drawCircle(3, 3, 3, 1);
    // d.draw_rect();
    // // d.writeDisplay();
    // d.end_draw();
    delay(30);
  }
};

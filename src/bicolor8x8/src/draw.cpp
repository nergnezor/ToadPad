#include "draw.h"

#include "display.h"

void Draw::init() {
  for (auto& d : Display::displays) {
    d.on_pushed();
    delay(50);
  }
};

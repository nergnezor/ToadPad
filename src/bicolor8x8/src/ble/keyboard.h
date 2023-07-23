#include <bluefruit.h>

namespace BleKeyboard {
void setup();
void loop();
void set_keyboard_led(uint16_t conn_handle, uint8_t led_bitmap);
void keypress(char c);
};
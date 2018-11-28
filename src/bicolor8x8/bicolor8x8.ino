/***************************************************
  This is a library for our I2C LED Backpacks

  Designed specifically to work with the Adafruit LED Matrix backpacks
  ----> http://www.adafruit.com/products/872
  ----> http://www.adafruit.com/products/871
  ----> http://www.adafruit.com/products/870

  These displays use I2C to communicate, 2 pins are required to
  interface. There are multiple selectable I2C addresses. For backpacks
  with 2 Address Select pins: 0x70, 0x71, 0x72 or 0x73. For backpacks
  with 3 Address Select pins: 0x70 thru 0x77

  Adafruit invests time and resources providing this open source code,
  please support Adafruit and open-source hardware by purchasing
  products from Adafruit!

  Written by Limor Fried/Ladyada for Adafruit Industries.
  BSD license, all text above must be included in any redistribution
 ****************************************************/
#include <Adafruit_GFX.h>
#include <Wire.h>
#include "Adafruit_LEDBackpack.h"

#define _swap_int16_t(a, b) \
  {                         \
    int16_t t = a;          \
    a = b;                  \
    b = t;                  \
  }
class BicolorMatrix_Flipped : public Adafruit_LEDBackpack, public Adafruit_GFX {
 public:
  BicolorMatrix_Flipped(void);

  void drawPixel(int16_t x, int16_t y, uint16_t color);

 private:
};
BicolorMatrix_Flipped::BicolorMatrix_Flipped(void) : Adafruit_GFX(8, 8) {}

void BicolorMatrix_Flipped::drawPixel(int16_t x, int16_t y, uint16_t color) {
  /* Changed */
  _swap_int16_t(x, y);

  y = 8 - y - 1;
  /* Changed */

  if ((y < 0) || (y >= 8)) return;
  if ((x < 0) || (x >= 8)) return;

  switch (getRotation()) {
    case 1:
      _swap_int16_t(x, y);
      x = 8 - x - 1;
      break;
    case 2:
      x = 8 - x - 1;
      y = 8 - y - 1;
      break;
    case 3:
      _swap_int16_t(x, y);
      y = 8 - y - 1;
      break;
  }

  if (color == LED_GREEN) {
    // Turn on green LED.
    displaybuffer[y] |= 1 << (x + 8);
    // Turn off red LED.
    displaybuffer[y] &= ~(1 << (7 - x));
  } else if (color == LED_RED) {
    // Turn on red LED.
    displaybuffer[y] |= 1 << (7 - x);
    // Turn off green LED.
    displaybuffer[y] &= ~(1 << (x + 8));
  } else if (color == LED_YELLOW) {
    // Turn on green and red LED.
    displaybuffer[y] |= (1 << (x + 8)) | (1 << (7 - x));
  } else if (color == LED_OFF) {
    // Turn off green and red LED.
    displaybuffer[y] &= ~(1 << (7 - x)) & ~(1 << (x + 8));
  }
}
BicolorMatrix_Flipped matrix = BicolorMatrix_Flipped();

void setup() {
  Serial.begin(9600);
  Serial.println("8x8 LED Matrix Test");

  matrix.begin(0x70);  // pass in the address
}

static const uint8_t PROGMEM smile_bmp[] = {B00111100, B01000010, B10100101,
                                            B10000001, B10100101, B10011001,
                                            B01000010, B00111100},
                             neutral_bmp[] = {B00111100, B01000010, B10100101,
                                              B10000001, B10111101, B10000001,
                                              B01000010, B00111100},
                             frown_bmp[] = {B00111100, B01000010, B10100101,
                                            B10000001, B10011001, B10100101,
                                            B01000010, B00111100};

void drawShadowedPixel(int x, int y) {
  matrix.drawCircle(x, y, 2, LED_RED);
  matrix.drawCircle(x, y, 1, LED_YELLOW);
  matrix.drawPixel(x, y, LED_GREEN);
}

int prev[] = {4, 4};
int prevPrev[] = {0, 0};
int prevPrevPrev[] = {0, 0};
void loop() {
  // for (int y = 0; y < matrix.height(); ++y) {
  //   for (int x = 0; x < matrix.width(); ++x) {
  //     matrix.clear();
  //     drawShadowedPixel(x, y);
  //     matrix.writeDisplay();  // write the changes we just made to the
  //     display delay(50);
  //   }
  // }
  matrix.drawPixel(prevPrevPrev[0], prevPrevPrev[1], LED_OFF);
  matrix.drawPixel(prevPrev[0], prevPrev[1], LED_RED);
  matrix.drawPixel(prev[0], prev[1], LED_YELLOW);
  for (int i = 0; i < 2; ++i) {
    prevPrevPrev[i] = prevPrev[i];
    prevPrev[i] = prev[i];
    prev[i] += random(3) - 1;
    if (prev[i] > 7) prev[i] = 7;
    if (prev[i] < 0) prev[i] = 0;
  }
  matrix.drawPixel(prev[0], prev[1], LED_GREEN);
  // matrix.fillCircle(prev[0], prev[1], 1, LED_GREEN);
  matrix.writeDisplay();  // write the changes we just made to the
  delay(10 + random(100));

  // for (int rot = 0; rot < 4; ++rot) {
  //   matrix.setRotation(rot);
  //   matrix.drawCircle(0, 1, 1, LED_RED);
  //   matrix.drawCircle(0, 1, 2, LED_GREEN);
  // }
  // matrix.writeDisplay();  // write the changes we just made to the display
  // matrix.setRotation(0);

  // delay(500);
  // matrix.clear();
  // matrix.drawBitmap(0, 0, smile_bmp, 8, 8, LED_GREEN);
  // matrix.writeDisplay();
  // delay(500);

  // matrix.clear();
  // matrix.drawBitmap(0, 0, neutral_bmp, 8, 8, LED_YELLOW);
  // matrix.writeDisplay();
  // delay(500);

  // matrix.clear();
  // matrix.drawBitmap(0, 0, frown_bmp, 8, 8, LED_RED);
  // matrix.writeDisplay();
  // delay(500);

  // matrix.clear();  // clear display
  // matrix.drawPixel(0, 0, LED_GREEN);
  // matrix.writeDisplay();  // write the changes we just made to the display
  // delay(500);

  // matrix.clear();
  // matrix.drawLine(0, 0, 7, 7, LED_YELLOW);
  // matrix.writeDisplay();  // write the changes we just made to the display
  // delay(500);

  // matrix.clear();
  // matrix.drawRect(0, 0, 8, 8, LED_RED);
  // matrix.fillRect(2, 2, 4, 4, LED_GREEN);
  // matrix.writeDisplay();  // write the changes we just made to the display
  // delay(500);

  // matrix.clear();
  // matrix.drawCircle(3, 3, 3, LED_YELLOW);
  // matrix.writeDisplay();  // write the changes we just made to the display
  // delay(500);

  // matrix.setTextWrap(false);  // we dont want text to wrap so it scrolls
  // nicely matrix.setTextSize(1); matrix.setTextColor(LED_GREEN); for (int8_t x
  // = 7; x >= -36; x--) {
  //   matrix.clear();
  //   matrix.setCursor(x, 0);
  //   matrix.print("Hello");
  //   matrix.writeDisplay();
  //   delay(100);
  // }
  // matrix.setRotation(3);
  // matrix.setTextColor(LED_RED);
  // for (int8_t x = 7; x >= -36; x--) {
  //   matrix.clear();
  //   matrix.setCursor(x, 0);
  //   matrix.print("World");
  //   matrix.writeDisplay();
  //   delay(100);
  // }
  // matrix.setRotation(0);
}

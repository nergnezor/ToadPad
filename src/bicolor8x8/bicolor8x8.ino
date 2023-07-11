#include "src/display.h"
#include "src/fonts.h"
namespace std {
void __throw_length_error(char const *) {}
}  // namespace std
const GFXfont *font = &Roboto_Mono_Thin_8;

I2cPins i2c_pins[] = {{11, 26}, {30, 26}, {27, 26}, {25, 26}};

static const uint8_t keyScanIndex = 3;
static const uint8_t keyScanAddress = 0;
static bool first = true;
std::vector<int> readKeys() {
  static const int ReadSize = 6;
  static byte keyCode[ReadSize];
  int result = 0;
  Wire.setPins(i2c_pins[keyScanIndex].sda, i2c_pins[keyScanIndex].scl);
  auto i2c_addr = 0x70 + keyScanAddress;

  Wire.begin();
  Wire.beginTransmission(i2c_addr);
  Wire.write(0x40);
  result = Wire.endTransmission();
  // request 6 bytes from slave device #2
  uint8_t length = Wire.requestFrom(i2c_addr, 6);
  Wire.end();

  bool changed = false;
  for (int i = 0; Wire.available(); ++i)  // slave may send less than requested
  {
    byte c = Wire.read();  // receive a byte as character
    if (keyCode[i] != c) changed = true;
    keyCode[i] = c;
  }

  auto v = std::vector<int>();
  if (changed) {
    for (size_t i = 0; i < ReadSize; i++)
      for (int bit = 0; bit < 8; bit++)
        if (keyCode[i] & (0x01 << bit)) v.push_back(i * 8 + bit);
  }
  return v;
}

static int nKeys;

void setup() {
  Serial.begin(115200);
  Wire.setClock(400000);
  for (size_t line = 0; line < 4; line++) {
    auto pins = i2c_pins[line];
    Wire.setPins(pins.sda, pins.scl);
    for (size_t address = 0; address < 8; address++) {
      if (line == keyScanIndex && address == keyScanAddress) continue;

      auto index = Display::get_index(nKeys);
      Display display;

      if (!display.init(pins, address, index)) {
        Serial.println("Failed to init display " + String(nKeys));
        continue;
      }
      Display::displays[index] = display;
      nKeys++;
    }
  }
  Serial.println("Found " + String(nKeys) + " keys");
}

int count;
void loop() {
  // auto keys = readKeys();
  // for (auto i : keys) {
  //   if (i > 9) i -= 6;
  //   if (i > 25) i -= 6;
  //   if (i < N_KEYS) {
  //     Display::displays[i].on_pushed();
  //   }
  // }
  Display::draw_big_rect(4, (count++) % 40, 30, 20, LED_YELLOW);
}

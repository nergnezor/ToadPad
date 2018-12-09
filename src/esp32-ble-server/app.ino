
#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include "SSD1306.h"

#include <Wire.h>

// See the following for generating UUIDs:
// https://www.uuidgenerator.net/

#define SERVICE_UUID "4fafc201-1fb5-459e-8fcc-c5c9c331914b"
#define CHARACTERISTIC_UUID "beb5483e-36e1-4688-b7f5-ea07361b26a8"

uint8_t ledPin = 16;  // Onboard LED reference

SSD1306 display(0x3c, 5, 4);  // instance for the OLED. Addr, SDA, SCL

#define HT16K33_ADDRESS 0xE0
byte i2cPins[][2] = {
    {2, 0}, {4, 0}, {17, 0}, {5, 0}, {18, 0},
};

BLEServer* pServer;
BLEService* pService;

void setup() {
  pinMode(ledPin, OUTPUT);

  Serial.begin(115200);

  display.init();                     // initialise the OLED
  display.flipScreenVertically();     // does what is says
  display.setFont(ArialMT_Plain_24);  // does what is says
  // Set the origin of text to top left
  display.setTextAlignment(TEXT_ALIGN_LEFT);

  Serial.println("Starting BLE work!");

  BLEDevice::init("MyESP32");
  pServer = BLEDevice::createServer();
  pService = pServer->createService(SERVICE_UUID);
  BLECharacteristic* pCharacteristic = pService->createCharacteristic(
      CHARACTERISTIC_UUID,
      BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE);

  pCharacteristic->setValue("Hello värld says Neil");
  pService->start();
  BLEAdvertising* pAdvertising = pServer->getAdvertising();
  pAdvertising->start();

  Serial.println("Characteristic defined! Now you can read it in your phone!");

  // Wire.begin(5,18);
  // Wire.begin(2,0);
  // Wire1.begin(4, 16);
  // TwoWire wire3();
  // wire3.begin(17,5);
}

byte val = 0;
void writeI2c() {
  // byte pins[2] = i2cPins[val % sizeof(i2cPins)];
  for (int i = 0; i < sizeof(i2cPins); ++i) {
    Wire.begin(i2cPins[i][0], i2cPins[i][1]);

    Wire.beginTransmission(HT16K33_ADDRESS +
                           i);  // transmit to device #44 (0x2c)
    // device address is specified in datasheet
    Wire.write(byte(0x00));  // sends instruction byte
    Wire.write(val);         // sends potentiometer value byte
    Wire.endTransmission();  // stop transmitting
  }
  val++;            // increment value
  if (val == 64) {  // if reached 64th position (max)
    val = 0;        // start over from lowest value
  }
}

void loop() {
  int connectedCount = pServer->getConnectedCount();
  // Serial.println("Hello, Noodles!");

  // digitalWrite(ledPin, LOW);
  // delay(1000);
  // digitalWrite(ledPin, HIGH);
  // delay(1000);

  display.clear();  // clear the display
  BLECharacteristic* pCharacteristic =
      pService->getCharacteristic(CHARACTERISTIC_UUID);

  // prep a string in the screen buffer
  // display.drawString(0, 0, "Ricky Dick");
  String s = pCharacteristic->getValue().c_str();
  display.drawString(0, 0, s);
  display.drawString(0, display.height() / 2, String(connectedCount));
  // display.fillCircle(display.width() / 2, display.height() / 2, 30);
  display.display();  // display whatever is in the buffer

  writeI2c();

  delay(1000);
}
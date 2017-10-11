#include "Arduino.h"
#include <Wire.h>
#include "OLED_DISPLAY.h"

#define OLED_RESET 	4
OLED_DISPLAY display = OLED_DISPLAY(OLED_RESET);

void setup() {

	Serial.begin(9600);

	display.init(OLED_SWITCHCAPVCC, 0x3C);
	display.display();
	delay(5000);
	display.clearDisplay();
	display.drawPixel(64, 1, COLOR::WHITE);
	display.display();
	delay(1000);
	display.drawPixel(64, 1, COLOR::BLACK);
	display.display();
	delay(1000);
	display.drawPixel(64, 32, COLOR::INVERSE);
	display.display();
}


void loop() {

}

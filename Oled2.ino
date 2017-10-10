#include "Arduino.h"
#include <Wire.h>
#include "OLED_DISPLAY.h"

#define OLED_RESET 	4
OLED_DISPLAY display = OLED_DISPLAY(OLED_RESET);

void setup() {

	Serial.begin(9600);

	display.begin(OLED_SWITCHCAPVCC, 0x3C);
	display.display();
	delay(5000);

	Serial.print("Done");
}


void loop() {

}

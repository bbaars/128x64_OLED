/*
 * OLED_DISPLAY.h
 *
 * Made by Brandon Baars
 *
 * October 7th, 2017
 *
 */


#ifndef __H_OLED_DISPLAY__
#define __H_OLED_DISPLAY__

// Define our screen size
#define OLED_LCDHEIGHT		64
#define OLED_LCDWIDTH		128

// BITS for our OLED Display

// I2C addr
#define I2C_ADDR						0x3C // page 19


#define OLED_SET_CONTRAST			0x81 // contrast
#define OLED_DISPLAY_ALL_ON_RESUME 	0xA4 // Resume to RAM content display (RESET)
#define OLED_DISPLAY_ALL _ON			0xA5 // Entire Display On
#define OLED_NORMALDISPLAY			0xA6	 // Normal Display (RESET)
#define OLED_INVERTDISPLAY			0xA7 // Inverts the Display
#define OLED_DISPLAY_OFF				0xAE // Set Display OFF
#define OLED_DISPLAY_ON				0xAF // Set Display ON

#define OLED_DISPLAY_OFFSET			0xD3 // Set vertical shift by COM from 0d-0d63
#define OLED_SET_COM_PINS			0xDA // Set com pin configuration (page 31)

#define OLED_SET_V_COM_DETECT		0xDB // Voltage Detect

#define OLED_SET_DISPLAYCLOCK_DIV	0xD5	 // Define the divide ratio (D) of the display Clock DCLK
#define OLED_SET_PRECHARGE			0xD9 // Phase 1 Periods of up to 15 DCLK Clocks

#define OLED_SET_MULTIPLEX			0xA8	 // Multiplex Ratio

#define OLED_SETLOWCOL				0x00 // Set the lower nibble of the column start address for page addressing
#define OLED_SETHIGHCOL				0x10 // Set the higher nibble of the column start address for page addressing

#define OLED_STARTLINE				0x40 // Set display RAM display start line register

#define OLED_MEM_MODE				0x20 // Memory mode (i.e Horizontal, vertical, page addressing, invalid)
#define OLED_COL_ADDR				0x21	 // Setup column start and end address
#define OLED_PAGE_ADDR				0x22 // Setup page start and end address

#define OLED_COM_SCAN_INC			0xC0 // Com scan increasing
#define OLED_COM_SCAN_DEC			0xC8	 // Com scan decresing COM[N-1] Where N is the Multiplex Ratio

#define OLED_SEG_REMAP				0xA0	 // Segment Remap

#define OLED_CHARGE_PUMP				0x8D // Charge pump


#define OLED_EXTERNALVCC				0x1
#define OLED_SWITCHCAPVCC			0x2


// Scrolling
#define OLED_ACTIVATE_SCROLL			0x2F // Start scrolling that is configured by the scrolling setup commands :26h/27h/29h/2Ah
#define OLED_DEACTIVATE_SCROLL		0x2E // Stop scrolling that is configured by the command 26h/27h/29h/2Ah
#define OLED_VERTICAL_SCROLL_AREA	0xA3 // Set No. of rows in top fixed area
#define OLED_RIGHT_HORIZ_SCROLL 		0x26 // Right horizontal scroll
#define OLED_LEFT_HORIZ_SCROLL		0x27 // Left Horizontal Scroll
#define OLED_VERT_RIGHT_HORIZ_SCROLL	0x29 // Vertical and right horizontal scroll
#define OLED_VERT_LEFT_HORIZ_SCROLL	0x2A	 // Vertical and left horizontal scroll

enum COLOR {

	WHITE = 0,
	BLACK = 1,
	INVERSE = 2

};


class OLED_DISPLAY {

public:

	// constructor
	OLED_DISPLAY(int8_t RESET = -1);

	void init(uint8_t vccstate = OLED_SWITCHCAPVCC, uint8_t i2caddr = I2C_ADDR, bool reset = true);
	void writeCommand(uint8_t command);
	void display(void);
	void clearDisplay(void);
	void drawPixel(int16_t x, int16_t y, COLOR color);
	uint8_t width();
	uint8_t height();

private:
	int8_t _i2cAddr, _vccState, rst;


};


#endif

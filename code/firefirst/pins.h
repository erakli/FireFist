#ifndef PINS_H
#define PINS_H

// SPI pins on the ATMega328: 11, 12 and 13 as reference in SPI Library
// Used for software SPI
#define SPI_CLK 13
#define SPI_MISO 12
#define SPI_MOSI 11
// Used for hardware & software SPI
#define SPI_CS 10

#define FIREBUTTON_PIN 2
#define LIGHTER_PIN 5
#define SOLENOID_PIN 4

#endif
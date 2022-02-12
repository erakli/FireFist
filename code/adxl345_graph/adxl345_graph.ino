// #include <SparkFun_ADXL345.h>

// // SPI pins on the ATMega328: 11, 12 and 13 as reference in SPI Library
// // Used for hardware & software SPI
// #define SPI_CS 10

// ADXL345 adxl = ADXL345(SPI_CS);


// void InitAccelerometer(){
//   adxl.powerOn();

//   adxl.setRangeSetting(ADXL345_RANGE_16G);
//   adxl.setSpiMode(ADXL345_SPI_MODE_4_WIRE);                        
// }


// void setup(){
//   Serial.begin(57600);                 // Start the serial terminal
//   InitAccelerometer();
// }

// void loop(){
//   float xyz[AXIS_COUNT];
//   adxl.readNormalized(xyz);

//   Serial.print(xyz[1]);
//   Serial.println();
// }


#include <Adafruit_ADXL345_U.h>

// SPI pins on the ATMega328: 11, 12 and 13 as reference in SPI Library
// Used for software SPI
#define SPI_CLK 13
#define SPI_MISO 12
#define SPI_MOSI 11
// Used for hardware & software SPI
#define SPI_CS 10

Adafruit_ADXL345_Unified accel = Adafruit_ADXL345_Unified(SPI_CLK, SPI_MISO, SPI_MOSI, SPI_CS);


void setup(){
  Serial.begin(57600);                 // Start the serial terminal
  
  accel.begin();
  accel.setRange(ADXL345_RANGE_16_G); 
}

void loop(){
  sensors_event_t event; 
  accel.getEvent(&event);
  Serial.println(event.acceleration.y);
}
## Кнопки и переключатели

Pull Up/Down резистры (подтягивающие/стгивающие) нужны чтобы в момент неопределённого состояния ("висящий" в воздухе провод) считываемое значение на пине МК было в конкретном положении - 1 или 0 (VCC или GND).

## Подключение светодиодов

ref: https://codius.ru/articles/%D0%9A%D0%B0%D0%BA_%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE_%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B0%D1%82%D1%8C_%D1%81%D0%B2%D0%B5%D1%82%D0%BE%D0%B4%D0%B8%D0%BE%D0%B4%D1%8B

Тут есть табличка с описанием характеристик.

## 74HC595

ref: https://www.arduino.cc/en/tutorial/ShiftOut

Notice the 10uF capacitor on the latchPin, if you have some flicker when the latch pin pulses you can use a capacitor to even it out.

ref: https://forum.arduino.cc/index.php?topic=286834.0

> When using the shitOut function do I need to output on PWM pins or can I just use normal digital pins?
> You can use any kind of digital pin you like.

## Версии Arduino Pro Mini

3.3v - это обычно 8MHz
5.0v - 16MHz

ref: https://arduino.stackexchange.com/a/28400

3.3V:
    Voltage regulators: KB33, S20K, F34V, L0RA, L0RB
    Oscillators: 80e., 80'0
5V:
    Voltage regulators: KB50, L05, L0UA, L0UB
    Oscillators: R160JAC6s, 16.000-30, A1, A'N, A'a


## I2C vs SPI

ref: https://electronics.stackexchange.com/questions/29037/tradeoffs-when-considering-spi-or-i2c

Unless you have constraints that strongly push you towards fewer wires (we had one project with a hermetically-sealed connector that each additional contact was rather expensive), avoid I2C when possible, and stick with SPI.

I2C is easier than SPI?! The only thing about I2C that's easier is the connectivity if you can just hook everything together. Otherwise the signal integrity is tougher in I2C, and robust software implementation is way tougher in I2C.


ref: https://learn.sparkfun.com/tutorials/adxl345-hookup-guide/all

SPI

Note: When using 3-wire SPI, it is recommended that the SDO pin be pulled up to VDD I/O or pulled down to GND via a 10 kΩ resistor. Please refer to page 15 of the ADXL345 Datasheet for additional information.

If using a 3.3V Arduino, such as the Arduino Pro or Pro Mini 3.3V/8MHz, logic level conversion is not necessary.


ref: https://www.microchip.com/forums/m851648.aspx

There are different notations for this, either MISO/MOSI or SDI/SDO.
 
In the case of MISO/MOSI notation on both devices:
MISO master -> MISO slave
MOSI master -> MOSI slave
 
In the case of SDI/SDO SDI notation on both devices:
SDI master ->SDO slave
SDO master ->SDI slave
 
If master has MISO/MOSI notation and slave has SDI/SDO:
MOSI master -> SDI slave
MISO master -> SDO slave
 
If master has SDI/SDO notation and slave has MISO/MOSI
SDI master -> MISO slave
SDO master -> MOSI slave
 
You can always check which one is input by connecting it in turn to VDD and VSS via a 10k resistor. If the pin follows, it is an input, if it stays the same, it is an output.
/*
Pin Connections:

analog 0: connected to y-axis
analog 1: connected to y-axis
analog 2: connected to z-axis
aref: connected to +3.3V
*/

#include <ADXL335.h>
#include "constants.h"

const int pin_x = A0;
const int pin_y = A1;
const int pin_z = A2;
const float aref = 3.3;

ADXL335 accel(pin_x, pin_y, pin_z, aref, 1.59, 1.59, 1.65);

const int direction = -1;

unsigned long punchStart = 0;    // variable for non-blocking punch timeframe check
const long punchInterval = 200;  // timeframe of a punch in ms, from max acceleration to max deceleration, 200 is very generous
int punchAccel = 2 * direction;  // the beginning of a punch in m/s^2, could be over 50m/s^2 depending on the puncher
int punchDecel = -3 * direction; // the end of a punch in m/s^2, could be less than -100m/s^2 depending on the puncher
// int flameTime = 200;             // how long the flame lasts, in ms
// int arcTime = 100;

void setup() {
    // Serial.begin(9600);

    pinMode(solenoidPin, OUTPUT);
    digitalWrite(solenoidPin, LOW);

    pinMode(lighterPin, OUTPUT);
    digitalWrite(lighterPin, LOW);

    // analogReference(EXTERNAL);
}

void loop() {
    //this is required to update the values
    accel.update();
 
    float y = accel.getY();

    if (y < punchAccel) {
        // Serial.println(y);
        punchStart = millis();
    }

    unsigned long currentMillis = millis();

    //look for punch ending, less than -40 m/s^2
    if (punchDecel < y && currentMillis - punchStart < punchInterval) {
        // Serial.println(y);
        // Serial.println("Punch");
        Fire();
    }
}


void Fire() {
    digitalWrite(lighterPin, HIGH);
    delay(LIGHTER_PREIGNITION_TIME);

    digitalWrite(solenoidPin, HIGH);
    delay(SOLENOID_OPEN_TIME);

    digitalWrite(solenoidPin, LOW);
    delay(LIGHTER_POSTIGNITION_TIME);

    digitalWrite(lighterPin, LOW);
}
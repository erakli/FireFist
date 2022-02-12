#include "constants.h"


const int initialDelay = 3000;

void setup() {
    pinMode(solenoidPin, OUTPUT);
    pinMode(lighterPin, OUTPUT);

    delay(initialDelay);

    Fire();
}

void loop() {
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
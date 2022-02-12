#include <Adafruit_ADXL345_U.h>

// #include "const.h"
#include "pins.h"

// software SPI
Adafruit_ADXL345_Unified accel = Adafruit_ADXL345_Unified(SPI_CLK, SPI_MISO, SPI_MOSI, SPI_CS);

unsigned long lastISRCallTime = 0;
volatile bool lastBtnState = false;
volatile bool fireBtnPressed = false;

unsigned long punchStart = 0; // variable for non-blocking punch timeframe check

unsigned long lastFiredTime = 0;

int punchCount = 0;

void FireButtonInterrupt()   // ISR
{
  fireBtnPressed = digitalRead(FIREBUTTON_PIN);
  if (fireBtnPressed != lastBtnState && millis() - lastISRCallTime < DEBOUNCE_TIME_MS) {
    return;
  }
  lastISRCallTime = millis();
  lastBtnState = fireBtnPressed;
}

int GetAccel() {
  sensors_event_t event;
  accel.getEvent(&event);
  return event.acceleration.y;
}

void Fire() {
  digitalWrite(LIGHTER_PIN, HIGH);
  delay(LIGHTER_PREIGNITION_TIME);

  digitalWrite(SOLENOID_PIN, HIGH);
  int solenoidTime = min(
    SOLENOID_OPEN_TIME + SOLENOID_COMPENSATION_TIME * punchCount,
    SOLENOID_MAX_TIME
  );
  delay(solenoidTime);
  digitalWrite(SOLENOID_PIN, LOW);

  delay(LIGHTER_POSTIGNITION_TIME);
  digitalWrite(LIGHTER_PIN, LOW);

  punchCount++;
  lastFiredTime = millis();
}

void setup(){
  accel.begin();
  accel.setRange(ADXL345_RANGE_16_G);

  pinMode(FIREBUTTON_PIN, INPUT);
  attachInterrupt(digitalPinToInterrupt(FIREBUTTON_PIN), FireButtonInterrupt, CHANGE);

  pinMode(SOLENOID_PIN, OUTPUT);
  digitalWrite(SOLENOID_PIN, LOW);

  pinMode(LIGHTER_PIN, OUTPUT);
  digitalWrite(LIGHTER_PIN, LOW);

  lastISRCallTime = millis();
}

void loop() {
  unsigned long timeSinceLastFire = millis() - lastFiredTime;
  if (timeSinceLastFire < FIRE_INTERVAL) {
    delay(FIRE_INTERVAL - timeSinceLastFire);
    return;
  }

  if (fireBtnPressed) {
    Fire();
    return;
  }

  // look for punch starting, at least 20 m/s^2
  if (PUNCH_ACEL < GetAccel()) {
    punchStart = millis();
  }

  // look for punch ending, less than -40 m/s^2
  unsigned long timeSincePunchStart = millis() - punchStart;
  if (GetAccel() < PUNCH_DECEL && timeSincePunchStart < PUNCH_INTERVAL) {
    Fire();
  }
}

const int LED_PIN = 13;

const int BUTTON_PIN = 2;
const int LIGHTER_PIN = 12;
const int SOLENOID_PIN = 11;

const int LIGHTER_PREIGNITION_TIME = 50;
const int LIGHTER_POSTIGNITION_TIME = 50;

const int SOLENOID_OPEN_TIME = 80; // 180;
const int SOLENOID_COMPENSATION_TIME = 20;
const int SOLENOID_MAX_TIME = 250;

const int DELAY_BETWEEN_FIRE = 500;

const int DEBOUNCE_TIME_MS = 200;

unsigned long lastISRCallTime = 0;
volatile bool lastBtnState = false;
volatile bool fireBtnPressed = false;

bool fired = false;
unsigned long lastFiredTime = 0;

int punchCount = 0;

void FireButtonInterrupt()   // ISR
{
    fireBtnPressed = digitalRead(BUTTON_PIN);
    if (fireBtnPressed != lastBtnState && millis() - lastISRCallTime < DEBOUNCE_TIME_MS) {
        return;
    }
    lastISRCallTime = millis();
    lastBtnState = fireBtnPressed;
}


void setup() {
    pinMode(LED_PIN, OUTPUT);
    digitalWrite(LED_PIN, LOW);

    pinMode(BUTTON_PIN, INPUT);  // already pulled down, no need for INPUT_PULLUP
    attachInterrupt(digitalPinToInterrupt(BUTTON_PIN), FireButtonInterrupt, CHANGE);

    pinMode(SOLENOID_PIN, OUTPUT);
    digitalWrite(SOLENOID_PIN, LOW);

    pinMode(LIGHTER_PIN, OUTPUT);
    digitalWrite(LIGHTER_PIN, LOW);

    lastISRCallTime = millis();
}


void loop() 
{
    if (fireBtnPressed && !fired && millis() - lastFiredTime > DELAY_BETWEEN_FIRE) {
        digitalWrite(LED_PIN, HIGH);
        Fire();
        fired = true;  // one shot
        lastFiredTime = millis();
    } else {
        digitalWrite(LED_PIN, LOW);
    }

    if (!fireBtnPressed) {
        fired = false;
    }
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
}
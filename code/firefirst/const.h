#ifndef CONST_H
#define CONST_H

#define LIGHTER_PREIGNITION_TIME 50
#define LIGHTER_POSTIGNITION_TIME 50

#define SOLENOID_OPEN_TIME 80 // 180
#define SOLENOID_COMPENSATION_TIME 20
#define SOLENOID_MAX_TIME 250

#define FIRE_INTERVAL 400

#define DEBOUNCE_TIME_MS 200

// timeframe of a punch in ms, from max acceleration to max deceleration
#define PUNCH_INTERVAL 200
// the beginning of a punch in m/s^2, could be over 50m/s^2
#define PUNCH_ACEL 20
//the end of a punch in m/s^2, could be less than -100m/s^2
#define PUNCH_DECEL -40

#endif
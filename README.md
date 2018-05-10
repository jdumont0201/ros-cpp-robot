# ros-cpp-robot

Computer vision enabled robot.

## Packages
### ledx
Controls LEDs

### gyro0
Gyroscope, accelerometer, magnetic field sensor.
Uses the LSM9DS1 sensor.
Library: https://github.com/akimach/LSM9DS1_RaspberryPi_Library

### gps0
GPS sensor.
Uses the GU-U7.
Library: https://github.com/wdalmut/libgps (recompiled to change serial to ttyS0)

## Topics
/gyro
/accel
/mag
/led0_mode
/led1_mode
/gps

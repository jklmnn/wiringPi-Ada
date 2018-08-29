# wiringPi-Ada

This project provides Ada bindings for the [wiringPi](http://wiringpi.com/) GPIO library.

The bindings are not complete, currently supported functions are

 - Pi:
   - wiringPiSetup
   - wiringPiSetupGpio
   - wiringPiSetupPhys
   - pinMode
   - digitalWrite
   - digitalRead
 - Serial
   - serialOpen
   - serialClose
   - serialPutchar
   - serialPuts
   - serialDataAvail
   - serialGetchar
   - serialFlush

## Build

### Shared library

`gprbuild -p -P wiringPi.gpr`

### Example

### GPIO

`cd example && gprbuild -P gpio.gpr && ./gpio`

### Serial

`cd example && gprbuild -P serial.gpr && ./serial <device> <baud rate>`

# wiringPi-Ada

This project provides Ada bindings for the [wiringPi](http://wiringpi.com/) GPIO library.

The bindings are not complete, currently supported functions are

 - wiringPiSetup
 - wiringPiSetupGpio
 - wiringPiSetupPhys
 - pinMode
 - digitalWrite
 - digitalRead

## Build

### Shared library

`gprbuild -p -P wiringPi.gpr`

### Example

`cd example && gprbuild -P pin.gpr && ./example`

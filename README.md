# SH1106 OLED Display demo for Raspberry Pi Pico

This demo uses the Adafruit driver which is still to be adapted for the `pico-sdk`.

Current (28/03/2024) state in branch `eerste-test`:

* `main()` contains a I2C Bus Scan. There is no use of the Adafruit code.
* The use of `i2c` in the Adafruit code is adapted to the pico sdk.
* Call of non-existent functions `start()`, `write()` and `stop()` cause compiler errors.



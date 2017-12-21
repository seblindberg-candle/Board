# Candle Board

The EAGLE Cad board files for the Candle project can be found here.

## TODO

- [x] Add a pull-up on the flash memory chip select line.
- [x] Fix the MOSFET orientation.
- [x] Fix the flash memory footprint.
- [x] Remove the hole.
- [x] Remove the microphone
- [ ] Switch out the power supply.
- [ ] Move the status LEDs to the back.
- [ ] Move the button to a more reachable position
- [ ] Make the serial port easier to connect to
- [ ] Increase the board length to 25-30 cm
- [x] Bias the display driver current sense line with the DAC
- [ ] Add one or two light sensors (front and/or back)

The following hardware changes are based on features/limitations in the peripherals that where not discovered until after the first revision.

- [ ] Connect the flash memory to `SPIC`
- [ ] Connect the display driver to `USARTD0`
- [ ] Connect `DISP_LE` to an event output (`PC4`, `PC7`, `PD4` or `PD7`)
- [ ] Connect `DISP_OE` to a compare output (`PD2`, since it is unused)
- [ ] Connect the board serial port to `USARTC0`

## Revisions

Board revisions are kept as tags in git. The board is generally tagged when the files have been sent off for manufacturing. To export a specific revision, simply run

```
$ git archive --format zip -o /path/to/rev-a.zip 4d268f
```

where the hash of the tag can be found by running `git show rev-a` for the specific tag.

## Notes

### MOSFET Pull-ups

The pull-ups are required because of the internal protection diods in the main IC. They will not allow the voltage to exceed ~3.8 V. The resistors connected to the gates thus serve to:

1. protect the gate from inrush current,
2. pull the gate high on startup and
3. set the voltage at the gate to a value above the turn-on threshold.




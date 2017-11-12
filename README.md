# Candle Board

The EAGLE Cad board files for the Candle project can be found here.

## TODO

- [ ] Add a pull-up on the flash memory chip select line.
- [ ] Fix the MOSFET orientation.
- [ ] Fix the flash memory footprint.
- [ ] Remove the hole.
- [ ] Switch out the power supply.
- [ ] Move the status LEDs to the back.

## Revisions

Board revisions are kept as tags in git. The board is generally tagged when the files have been sent off for manufacturing. To export a specific revision, simply run

```
$ git archive --format zip -o /path/to/rev-a.zip 4d268f
```

where the hash of the tag can be found by running `git show rev-a` for the specific tag.

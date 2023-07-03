# QMK Docker

Created this in order to use QMK on Apple Silicon.

## SETUP

### Build Docker Image

```
make build
```

### Run Docker Image

```
make run
```

### QMK

```
qmk setup
```

### QMK Compile

```
qmk compile -kb lily58 -km default -e CONVERT_TO=promicro_rp2040
```

Output goes to `~/qmk_firmware/`

```
mv /root/qmk_firmware/lily58_rev1_default.
hex /app/
```

`mv /root/qmk_firmware/*.hex /app/`

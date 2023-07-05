# QMK Docker for Apple Silicon

This repository provides the necessary configuration to use QMK with Docker on Apple Silicon devices.

## Getting Started

These instructions guide you on how to build and run the Docker image for QMK.

### Building the Docker Image

To build the Docker image, execute the following command:

```bash
make build
```

This command downloads the necessary Docker files and constructs the image on your local machine.

### Running the Docker Image

To run the Docker image, execute the following commands:

```bash
make run
make setup
```

These commands start the Docker container and prepare it for compiling your keyboard layout.

> **Note**: The initial build process may take some time.

## QMK Compilation

To access the bash shell of the Docker container, run the following command:

```bash
make bash
```

### Compiling for Lily58

To compile your keyboard layout with QMK for the Lily58 keyboard, use the following command:

```bash
qmk compile -kb lily58 -km default
```

This command compiles the QMK keyboard layout using the default keymap for the Lily58 keyboard.

#### Compiling for Raspberry Pi (Optional)

If you are compiling a keyboard layout specifically for the Raspberry Pi controller, you can use the following command:

```bash
qmk compile -kb lily58 -km default -e CONVERT_TO=promicro_rp2040
```

This command compiles the QMK keyboard layout using the default keymap for the Lily58 keyboard, targeting the Raspberry Pi controller and utilizing the RP2040 bootloader.

### Adjustments for Split Keyboards (Optional)

Some split keyboards, such as Lily58, may require additional adjustments to compile properly. To enable split keyboard support, include the following code snippet in your keyboard layout's configuration file `config.h`:

```c
#define SPLIT_USB_DETECT
```

This adjustment is specific to Lily58, and other split keyboards may have different requirements.

With these instructions, you should be able to build and compile your QMK keyboard layout on Apple Silicon using Docker.

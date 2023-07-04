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

Run the Docker image using the following command:

```bash
make run
```

This command starts the Docker container, which is now ready to compile QMK keyboard layouts.

## Adjustments for Split Keyboards

Not sure if all split keyboards require this, but the Lily58 requires the following adjustments to compile properly.

```c
#define SPLIT_USB_DETECT

```

Had a lot of issues while trying to make the right side work properly, but this finally finished this issue.

## QMK Compilation

To compile your keyboard layout with QMK, use the following command:

```bash
qmk compile -kb lily58 -km default
```

### Compiling for Pro Micro

To compile a keyboard layout specifically for Pro Micro, use the following command:

```bash
qmk compile -kb lily58 -km default -e CONVERT_TO=promicro_rp2040
```

## Managing Output

The output of the QMK compilation is directed to the `~/qmk_firmware/` directory within the Docker container.

To move the compiled `.hex` file to the application directory, execute the following command:

```bash
mv /root/qmk_firmware/lily58_rev1_default.hex /app/
```

To move all compiled `.hex` files to the application directory, use the wildcard approach:

```bash
mv /root/qmk_firmware/*.hex /app/
```

With these instructions, you should be ready to run QMK on Apple Silicon using Docker.

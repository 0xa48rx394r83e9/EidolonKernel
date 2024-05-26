# EidolonKernel

EidolonKernel is a lightweight, custom operating system kernel implemented in C. It aims to provide a minimal kernel with basic functionality as a learning exercise and a starting point for further development.

## Features

- Boots using a multiboot-compliant bootloader
- Initializes a basic VGA text buffer for displaying text
- Compiled using a cross-compiler targeting i686-elf architecture
- Linked with a custom linker script to define the memory layout

## Prerequisites

To build and run EidolonKernel, you need the following:

- A cross-compiler targeting i686-elf (e.g., `i686-elf-gcc`)
- GNU Make
- QEMU emulator (for running the kernel)

## Building

To build the kernel, follow these steps:

1. Make sure you have the prerequisites installed.
2. Clone the repository:
   ```
   git clone https://github.com/your-username/EidolonKernel.git
   cd EidolonKernel
   ```
3. Run the following command to build the kernel:
   ```
   make
   ```

The build process will generate the kernel binary `myos.bin`.

## Running

To run the kernel using QEMU, use the following command:

```
make run
```

This will start QEMU and boot the EidolonKernel. You should see the message "Hello!" displayed on the screen.

## Project Structure

The project has the following structure:

- `kernel.c`: Contains the main kernel code, including the `kernel_main` function.
- `boot.s`: Assembly code for the bootloader, setting up the stack and calling `kernel_main`.
- `linker.ld`: Linker script that defines the memory layout of the kernel.
- `Makefile`: Makefile for building the kernel and running it with QEMU.

## Contributing

Contributions to EidolonKernel are welcome! If you find any bugs, have suggestions for improvements, or want to add new features, please open an issue or submit a pull request.

## License

EidolonKernel is released under the [MIT License](LICENSE).

## Acknowledgements

EidolonKernel was developed as a learning project and was inspired by various tutorials and resources on operating system development.

## Contact

If you have any questions or feedback, please feel free to contact the project maintainer at your-email@example.com.

Happy coding!

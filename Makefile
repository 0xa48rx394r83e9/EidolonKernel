CC = i686-elf-gcc
AS = i686-elf-as
CFLAGS = -std=gnu99 -ffreestanding -O2 -Wall -Wextra
LDFLAGS = -T linker.ld -ffreestanding -O2 -nostdlib -lgcc

all: myos.bin

myos.bin: boot.o kernel.o
	$(CC) $(LDFLAGS) -o $@ $^

kernel.o: kernel.c
	$(CC) $(CFLAGS) -c $< -o $@

boot.o: boot.s
	$(AS) $< -o $@

run: myos.bin
	qemu-system-i386 -kernel $<

clean:
	rm -f *.o myos.bin

.PHONY: all run clean

This is a bootloader implementation for a "kernel"

run these commands to bind with your files.

```nasm -f elf32 kernel.asm -o kasm.o```
```gcc -m32 -c kernel.c -o kc.o```
```ld -m elf_i386 -T link.ld -o kernel kasm.o kc.o```

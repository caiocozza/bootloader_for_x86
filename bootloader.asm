
bits 32
section .text
        align 4
        dd 0x1BADB002
        dd 0x00
        dd - (0x1BADB002 + 0x00)

global begin
extern kinit

begin:
  cli
  mov esp, stack_space
  call kinit
  hlt

section .bss
resb 8192 ;stack siz
stack_space:

#!/bin/sh

nasm -f elf64 $1.asm && ld $1.o && ./a.out
rm *.o a.out


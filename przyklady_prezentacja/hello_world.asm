section   .text   

       global    _start

_start:   
          mov         rax, 1                ; numer funkcji systemowej - sys_write
          mov         rdi, 1                ; numer pliku (1 == standardowe wyjscie)
          mov         rsi, message          ; adres tekstu
          mov         rdx, size             ; dlugosc tekstu
          syscall                             ; wywolanie funkcji systemowej
          mov         rax, 60               ; numer funkcji systemowej - sys_exit
          syscall                             ; wywolanie funkcji systemowej

section   .data

message  db          "Hello, World", 0xa     ; napis wraz z znakiem nowej linii (10)
size     equ         $ - message             ; dlugosc napisu

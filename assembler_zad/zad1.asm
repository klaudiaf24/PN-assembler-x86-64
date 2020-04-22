section .text
global _start

_start:
	mov 	rax, 1
	mov	rdi, 1
	mov	rsi, text
	mov	rdx, len
	syscall

	mov rax, 60
	syscall

section .data
text db 	"Zadanie 1", 0ah
len  equ	$ - text
	

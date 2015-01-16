; Program: exit
;
; Executes the exit system call
;
; We can check the value of the exit call by: echo $?
;
; Generate object file: 
; yasm -f elf64 -g dwarf2 -l exit.lst exit.asm
; Generate executable:
; ld -o exit exit.o
;
	segment .text
	global _start

_start:
	mov eax, 1	; syscal nr 1 is exit
	mov ebx, 0	; the value of the syscal
	int 0x80	; sotfware interrupt for syscall

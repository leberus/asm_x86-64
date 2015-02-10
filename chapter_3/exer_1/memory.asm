# yasm -f elf64 -g dwarf2 -l data.lst data.asm
	segment .data

a	dd	932, 211, 432, 7777, 88000, 120, 6000, 33, 534
str	db	"this is a string! w0w!", 0

	segment .bss

b	resb	5	

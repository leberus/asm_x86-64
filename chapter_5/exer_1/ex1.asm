# yasm -f elf64 -g dwarf2 ex1.asm
# ld -o ex1 ex1.o

	segment .data
a	dq	0xa
b	dq	4
c	dq	-2
d	dq	-1

	segment .text
	global main
main:
	mov rax, [a]
	mov rbx, [b]
	mov rcx, [c]
	mov rdx, [d]
	add rax, rbx
	add rax, rcx
	add rax, rdx
	xor rax, rax
	ret

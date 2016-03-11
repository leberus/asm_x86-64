	segment .data
a	dw	1
b	dw	10
c	dw	5
abp	dw	0
abm	dw	0
acp	dw	0
acm	dw	0
	
	segment .text
	global main
main:
	movsx rax, word [a]
	add rax, [b]
	mov [abp], rax

	mov rax, [b]
	sub rax, [a]
	mov [abm], rax

	mov rax, [a]
	add rax, [c]
	mov [acp], rax
	
	mov rax, [c]
	sub rax, [a]
	mov [acm], rax
	ret

	segment .data
a	dq	0xe	; 8bytes
b	dd	0xef	; 4bytes
c	dw	2	; 2bytes
d	db	127	; 1bytes
sum	dq	0

	segment .text
	global main
main:
	mov 	rax, [a]
	movsxd  rbx, dword [b]
	movsx   rcx, word [c]
	movsx   rdx, byte [d]

	add rax, rbx
	add rax, rcx
	add rax, rdx
	mov [sum], rax
	ret
	

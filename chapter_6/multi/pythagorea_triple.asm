       segment .data
a       dq  5
b       dq  5
c	dq 25

       segment .text		 	; SF or ZF
       global  main                    	; Tell linker about main
main:
	mov rax, [a]
	mov rbx, [b]
	mov rcx, [c]

	imul rax, rax
	imul rbx, rbx
	imul rcx, rcx

	add rax, rbx
	sub rax, rcx
	xor rax, rax
	ret

       	segment .data
a       dq	50
b       dq	25
c	dq  	30
d	dq  	80
ng	dq	4
avg	dq	0
rem	dq	0


	segment .text		 	
       	global  main 
main:
	mov rax, [a]
	add rax, [b]
	add rax, [c]
	add rax, [d]
	mov rdx, 0
	
	idiv qword [ng]
	mov [avg], rax
	mov [rem], rdx
	xor rax, rax
	ret

	
	

       segment .data
a       dq  5
b       dq  6

       segment .text		 	; SF or ZF
       global  main                    	; Tell linker about main
main:
    mov rax, [a]
    sub rax, [b]
    ret

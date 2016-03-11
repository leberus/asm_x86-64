	
	;https://es.wikipedia.org/wiki/Distancia_euclidiana
	segment .data
xa       dq     9
xb       dq     3
ya       dq     7
yb       dq     2
sq       dq     0
x        dq     0
y        dq     0


        segment .text                   
        global  main 
main:
        mov rax, [xa]
        sub rax, [xb]
        imul qword rax
        mov [x], rax

        mov rax, [ya]
        sub rax, [yb]
        imul qword rax
        mov [y], rax

        mov rax, [x]
        add rax, [y]

        mov [sq], rax
        xor rax, rax
        ret

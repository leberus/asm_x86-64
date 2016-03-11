        segment .data
a       dq  32
b       dq  5
quot    dq      0
rem dq      0


    segment .text           
        global  main                        ; Tell linker about main
main:
    mov rax, [a]                ; divident is set by rdx:rax
    mov rdx, 0
    idiv qword [b]
    mov [quot], rax
    mov [rem], rdx
    xor rax, rax
    ret

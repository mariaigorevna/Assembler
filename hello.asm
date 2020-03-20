global _start
_start:
main:
        push    rbp
        mov     rbp, rsp
        mov     DWORD  [rbp-48], 1
        mov     DWORD  [rbp-44], -3
        mov     DWORD  [rbp-40], 3
        mov     DWORD  [rbp-36], 4
        mov     DWORD  [rbp-32], 5
        mov     DWORD  [rbp-28], 6
        mov     DWORD  [rbp-24], -7
        mov     DWORD  [rbp-20], 8
        mov     DWORD  [rbp-16], 9
        mov     DWORD  [rbp-12], 10
        mov     DWORD  [rbp-8], 0
        mov     DWORD  [rbp-4], 0
.L4:
        cmp     DWORD  [rbp-4], 9
        jg      .L2
        mov     eax, DWORD  [rbp-4]
        cdqe
	mov	eax, DWORD [rbp-48+rax*4]
        test    eax, eax
        jns     .L3
        mov     eax, DWORD  [rbp-4]
        cdqe
        mov     eax, DWORD  [rbp-48+rax*4]
        neg     eax
        mov     edx, eax
        mov     eax, DWORD  [rbp-4]
        cdqe
        mov     DWORD  [rbp-48+rax*4], edx
.L3:
        mov     eax, DWORD  [rbp-4]
        cdqe
        mov     eax, DWORD  [rbp-48+rax*4]
        add     DWORD  [rbp-8], eax
	mov	ebx, DWORD [rbp-8]
        add     DWORD  [rbp-4], 1
        jmp     .L4
.L2:
        mov     eax, 0
        pop     rbp
	mov	eax, 1
        int 0x80

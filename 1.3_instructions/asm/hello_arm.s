.global _start
_start:
    mov x0, #1          // stdout
    ldr x1, =msg        // buffer
    mov x2, #14         // length
    mov x7, #4          // syscall: write
    svc #0
    mov x7, #1          // syscall: exit
    svc #0
msg:
    .ascii "Hello ARM Pi!\n"

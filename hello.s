.data
hello:
    .ascii "Hello\n\0"

.text
.globl _start #.global valid too

_start:	
    mov $60, %rax #syscall: sys_exit
    xor %rdi, %rdi #exit status: 0, rdi = register destination index
    syscall #calls the kernel

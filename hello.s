.data
wah:
    .ascii "Wah !\n\0"

.text
.globl _start 	   #.global valid too

_start:	
    mov $1, %rax   #syscall: sys_write, rax = Register Accumulator eXtended
    mov $1, %rdi   #stdout, rdi = register destination index
    mov $wah, %rsi #char * address, rsi = register source index
    mov $10, %rdx  #string length, rdx = Register Data eXtended
    syscall 	   #calls the kernel

    mov $60, %rax  #syscall: sys_exit
    xor %rdi, %rdi #exit status: 0
    syscall

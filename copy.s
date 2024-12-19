.bss 		   	#block starting symbol for uninitialize or initialize to zero global and static variables
    .lcomm buffer, 13	#local  common area/allocated for two files refer to different memory location in bss.
    .comm  buffes, 13	#global common area/allocated for two files refer to same      memory location in bss.

.data
hello:
    .ascii "Hello\n\0"


.text
.globl _start

_start:
    mov $hello,  %rsi	#char * src
    mov $buffer, %rdi   #char * dest
    call copy_string

    mov $60,  %rax  	#exit
    xor %rdi, %rdi 	#0
    syscall	  	#call kernel

copy_string:
    mov $13, %rcx	#loop count
.Loop:
    mov (%rsi), al	#move value pointed by rsi into al
    mov al, (%rdi)	#move al into place pointed by rdi
    inc %rsi
    inc %rdi

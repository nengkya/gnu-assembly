.bss 		   	#block starting symbol for uninitialize or initialize to zero global and static variables
    .lcomm buffer, 13	#local  common area/allocated for two files refer to different memory location in bss.
    .comm  buffes, 13	#global common area/allocated for two files refer to same      memory location in bss.



.text
.globl _start

_start:
    mov $60, %rax  	#exit
    xor %rdi, %rdi 	#0
    syscall	  	#call kernel

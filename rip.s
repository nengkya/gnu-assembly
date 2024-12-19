/*
1111 1111 = 1 byte

.quad directive is used to define 64 bit (8 byte) numeric value(s)

.quad 0x123456789ABCDEF0, 2, 3
	1 2 3 4 5 6 7 8

little endian
1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 byte
F0 DE BC 9A 78 56 34 12 02 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00
1  2  3  4  5  6  7  8  1  2  3  4  5  6  7  8  1  2  3  4  5  6  7  8
*/

.data
num1:	.quad  5
num2:	.quad 10
result: .quad  0

.text
.globl _start

_start:
    
    mov num1(%rip), %rax #register instruction pointer relative addressing
			 #it dereferences variable in num1 and stores the value to %rax register.
    add num2(%rip), %rax
    mov %rax, result(%rip)

    mov $60, %rax	 #exit
    xor %rdi, %rdi	 #0
    syscall		 #call kernel

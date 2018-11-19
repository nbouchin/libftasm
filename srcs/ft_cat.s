%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define READ				3
%define WRITE				4
%define OPEN				5
%define CLOSE				6
%define BUF_SIZE			1024

section .bss
	buf			dd BUF_SIZE 

section .text
	global _ft_cat

_ft_cat:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	mov [rbp - 0x10], rax

_start:
	jc _ret
	;; Prepare read syscall
	mov rdi, [rbp - 0x10]
	mov rsi, buf
	mov rdx, BUF_SIZE 
	mov rax, MACH_SYSCALL(READ)
	syscall
	mov [rbp - 0x8], rax
	
	;; Prepare write syscall
	mov rdi, STDOUT
	mov rsi, buf
	mov rdx, rax 
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	mov rax, [rbp - 0x8]
	cmp rax, 0
	jbe _ret
	jmp _start

_ret:
	mov rsp, rbp
	pop rbp
	ret

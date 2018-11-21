%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .text
global _ft_putstr
extern _ft_strlen

_ft_putstr:
	mov rbx, rdi					; save the first arg in rbx
	call _ft_strlen					; get the rdi size
	mov rdi, STDOUT					; put STDOUT define into third register
	mov rdx, rax					; put ft_strlen ret in rdx third parameter register
	mov rsi, rbx					; get the rbx previous saved register into rsi seccond register
	mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
	syscall							; call write syscall
	ret

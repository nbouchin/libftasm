%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .text
global _ft_putstr_fd
extern _ft_strlen

_ft_putstr_fd:
	mov rbx, rdi					; save the first arg in rbx
	mov r8, rsi
	call _ft_strlen					; get the rdi size
	mov rdi, r8						; put STDOUT define into third register
	mov rdx, rax					; put ft_strlen ret in rdx third parameter register
	mov rsi, rbx					; get the rbx previous saved register into rsi seccond register
	mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
	syscall							; call write syscall
	ret

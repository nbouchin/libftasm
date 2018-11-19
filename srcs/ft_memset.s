section .text
global _ft_memset

_ft_memset:
	mov rcx, rdx
	mov rax, rsi
	cld
	rep stosb 
	mov rax, rdi
	ret

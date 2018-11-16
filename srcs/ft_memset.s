section .text
global _ft_memset
extern _ft_strlen

_ft_memset:
		mov rcx, rdx
		mov rax, rsi
		rep stosb 
		sub rdi, rax
		mov rax, rdi
		inc rax
		ret

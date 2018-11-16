section .text
global _ft_memset

_ft_memset:
		mov rcx, rdx
		mov rax, rsi
		rep stosb 
		sub rdi, rax
		mov rax, rdi
		inc rax
		ret

section .text
global _ft_memset

_ft_memset:
	mov r11, rdi
	mov rcx, rdx
	mov rax, rsi
	rep stosb 
	mov rax, r11
	ret

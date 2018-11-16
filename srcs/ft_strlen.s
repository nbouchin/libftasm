section .text
global _ft_strlen

_ft_strlen:
		mov rsi, rdi
		mov rax, 0
		repne scasb 
		dec rdi
		sub rdi, rsi
		mov rax, rdi
		ret

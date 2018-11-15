section .text
global _ft_isascii

_ft_isascii:
		mov rdx, rdi
		sub rdx, 0 
		cmp rdx, 128
		jb _isascii
		xor rax, rax
		ret

_isascii:
		mov rax, 1
		ret

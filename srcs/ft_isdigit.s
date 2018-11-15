section .text
global _ft_isdigit


_ft_isdigit:
		mov rdx, rdi
		sub rdx, '0'
		cmp rdx, 10
		jb _isdigit
		xor rax, rax
		ret

_isdigit:
		mov rax, 1
		ret

section .text
global _ft_tolower
extern _ft_isalpha

_ft_tolower:
		call _ft_isalpha
		cmp rax, 1
		je _check_upper
		mov rax, rdi
		ret

_check_upper:
		mov rdx, rdi
		sub rdx, 'A'
		cmp rdx, 26
		jb _tolower
		mov rax, rdi
		ret

_tolower:
		add rdi, 32
		mov rax, rdi
		ret

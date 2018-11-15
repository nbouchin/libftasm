section .text
global _ft_toupper
extern _ft_isalpha

_ft_toupper:
		call _ft_isalpha
		cmp rax, 1
		je _check_lower
		mov rax, rdi
		ret

_check_lower:
		mov rdx, rdi
		sub rdx, 'a'
		cmp rdx, 26
		jb _toupper
		mov rax, rdi
		ret

_toupper:
		sub rdi, 32
		mov rax, rdi
		ret

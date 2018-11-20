section .text
global _ft_islower
extern _ft_isalpha

_ft_islower:
	call _ft_isalpha
	cmp rax, 1
	je _check_upper
	xor rax, rax
	ret

_check_upper:
	mov rdx, rdi
	sub rdx, 'A'
	cmp rdx, 26
	jb _islower
	xor rax, rax
	ret

_islower:
	mov rax, 1
	ret

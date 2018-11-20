section .text
global _ft_isupper
extern _ft_isalpha

_ft_isupper:
	call _ft_isalpha
	cmp rax, 1
	je _check_lower
	xor rax, rax
	ret

_check_lower:
	mov rdx, rdi
	sub rdx, 'a'
	cmp rdx, 26
	jb _isupper
	xor rax, rax
	ret

_isupper:
	mov rax, 1
	ret

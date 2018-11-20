section .text
global _ft_isprint

_ft_isprint:
	mov rdx, rdi
	sub rdx, 32
	cmp rdx, 95
	jb	_isprint
	xor rax, rax
	ret

_isprint:
	mov rax, 1
	ret

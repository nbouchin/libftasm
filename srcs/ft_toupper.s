section .text
global _ft_toupper
extern _ft_islower

_ft_toupper:
	call _ft_islower
	cmp rax, 1
	je _toupper
	mov rax, rdi
	ret

_toupper:
	sub rdi, 32
	mov rax, rdi
	ret

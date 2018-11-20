section .text
global _ft_tolower
extern _ft_isupper

_ft_tolower:
	call _ft_isupper
	cmp rax, 1
	je _tolower
	mov rax, rdi
	ret

_tolower:
	add rdi, 32
	mov rax, rdi
	ret

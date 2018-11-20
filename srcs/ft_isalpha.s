section .text
global _ft_isalpha

_ft_isalpha:
	mov rdx, rdi
	sub rdx, 'A'
	cmp rdx, 26
	jb _isalpha				; is alpha 

	mov rdx, rdi
	sub rdx, 'a'
	cmp rdx, 26
	jb _isalpha				; is alpha
	xor rax, rax
	ret

_isalpha:
	mov rax, 1
	ret

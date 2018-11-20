section .text
global _ft_isupper

_ft_isupper:
	cmp rdi, 'A'	
	jl _end
	cmp rdi, 'Z'
	jg _end
	mov rax, 1
	ret

_end:
	xor rax, rax
	ret

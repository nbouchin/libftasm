section .text
global _ft_islower

_ft_islower:
	cmp rdi, 'a'	
	jl _end
	cmp rdi, 'z'
	jg _end
	mov rax, 1
	ret

_end:
	xor rax, rax
	ret

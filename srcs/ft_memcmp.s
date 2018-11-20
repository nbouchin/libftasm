section .text
global _ft_memcmp

_ft_memcmp:
	xor rax, rax
	mov rcx, rdx
	repe cmpsb
	mov al, [ rdi - 1 ]
	mov cl, [ rsi - 1 ]
	sub eax, ecx
	ret

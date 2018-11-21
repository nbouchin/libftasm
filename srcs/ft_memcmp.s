section .text
global _ft_memcmp

_ft_memcmp:
	xor rax, rax
	mov rcx, rdx
	repe cmpsb
	movzx eax, byte [ rdi - 1 ]
	movzx ecx, byte [ rsi - 1 ]
	sub eax, ecx
	cmp eax, 127
	jng _ret
	mov eax, -1

_ret:
	ret

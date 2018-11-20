section .text
global _ft_memchr

_ft_memchr:
	test rdx, rdx
	jz _ret_null
	xor rax, rax
	mov rcx, rdx
	mov rax, rsi
	repne scasb
	jne _ret_null
	mov rax, rdi
	dec rax
	ret

_ret_null:
	xor rax, rax
	ret

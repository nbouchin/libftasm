section .text
global _ft_memset

_ft_memset:
		mov rcx, rdx
		mov rbx, rdi

		mov [rbx + rcx - 1], byte rsi

		mov rax, rdi
		ret

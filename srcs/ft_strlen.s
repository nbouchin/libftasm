section .text
global _ft_strlen

_ft_strlen:
		mov rcx, 0 

_loop1:
		inc rcx
		cmp byte [rdi + rcx - 1], 0
		jnz _check_last
		jmp _end

_check_last:
		cmp byte [rdi + rcx - 1], '\n'
		jnz _loop1
		jmp _end


_end:
		mov rax, rcx
		dec rax
		ret

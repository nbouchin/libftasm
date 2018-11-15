section .text
global _ft_strlen

_ft_strlen:
		cmp rdx, 0
		jz _end
		mov rcx, 0 

_loop1:
		inc rcx
		cmp byte [rdi + rcx - 1], 0
		jnz _check_last
		mov rax, rcx
		dec rax
		jmp _end

_check_last:
		cmp byte [rdi + rcx - 1], '\n'
		jnz _loop1
		mov rax, rcx
		dec rax
		jmp _end


_end:
		ret

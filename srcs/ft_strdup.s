section .text
global _ft_strdup
extern _ft_memcpy
extern _ft_strlen
extern _malloc

_ft_strdup:
	enter 0, 0
	push rdi
	call _ft_strlen				; get string length
	push rax
	mov rdi, rax				; give string length to malloc
	call _malloc				; call malloc
	mov rdi, rax				; put the result of malloc into first parameter
	pop rdx
	pop rsi
	call _ft_memcpy				; call _ft_memcpy

	leave
	ret

section .text
global _ft_strdup
extern _ft_memcpy
extern _ft_strlen
extern _malloc

_ft_strdup:
	enter 0, 0
	push rdi					; push given parameter on stack 
	call _ft_strlen				; get string length
	push rax					; push string length on stack
	mov rdi, rax				; give string length to malloc
	call _malloc				; call malloc
	mov rdi, rax				; put the result of malloc into first parameter
	pop rdx						; pop back string length into rdx register
	pop rsi						; pop back default string into rsi register
	call _ft_memcpy				; call _ft_memcpy
	leave
	ret

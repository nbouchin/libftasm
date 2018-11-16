section .text
global _ft_strdup
extern _ft_memcpy
extern _ft_strlen
extern _malloc

_ft_strdup:
	push rbp					; push rbp register on stack
	mov rbp, rsp				; move rsp register on rbp register
	sub rsp, 0x10				; align memory
	
	mov [rbp - 0x8], rdi		; push rdi address on rbp - 8
	call _ft_strlen				; get string length
	mov [rbp - 0x10], rax		; push rax address on rbp - 16
	mov rdi, rax				; give string length to malloc
	call _malloc				; call malloc
	mov rdi, rax				; put the result of malloc into first parameter
	mov rsi, [rbp - 0x8]		; pop back default string into rsi register
	mov rdx, [rbp - 0x10]		; pop back string length into rdx register	
	call _ft_memcpy				; call _ft_memcpy

	mov rsp, rbp				; move rbp on rsp register
	pop rbp						; pop rbp register from stack
	ret

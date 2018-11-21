%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .text
global _ft_puts
extern _ft_strlen

_ft_puts:
	cmp rdi, 0						; check if rdi is NULL 
	jz _null						; jump to null

	mov rbx, rdi					; save the first arg in rbx
	call _ft_strlen					; get the rdi size
	mov rdi, STDOUT					; put STDOUT define into third register
	mov rdx, rax					; put ft_strlen ret in rdx third parameter register
	mov rsi, rbx					; get the rbx previous saved register into rsi seccond register
	mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
	syscall							; call write syscall
	mov rdi, STDOUT
	mov rdx, 1
	lea rsi, [rel null + 6]
	mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
	syscall							; call write syscall
	mov rax, 10
	ret

_null:
	mov rdi, STDOUT					; put STDOUT define into third register
	mov rdx, 6						; put ft_strlen ret in rdx third parameter register
	lea rsi, [rel null]				; get the rbx previous saved register into rsi seccond register
	mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
	syscall							; call write syscall
	mov rax, 10
	ret

section .rodata
	null		db "(null)", 10

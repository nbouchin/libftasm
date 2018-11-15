%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
		null		db "(null)"
		len			equ $ - null
		new_line	db 10

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
		mov rsi, new_line
		mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
		syscall							; call write syscall
		ret

_null:
		mov rdi, STDOUT					; put STDOUT define into third register
		mov rdx, len					; put ft_strlen ret in rdx third parameter register
		mov rsi, null					; get the rbx previous saved register into rsi seccond register
		mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
		syscall							; call write syscall
		mov rdi, STDOUT
		mov rdx, 1
		mov rsi, new_line
		mov rax, MACH_SYSCALL(WRITE)	; move WRITE syscall into return register
		syscall							; call write syscall
		ret

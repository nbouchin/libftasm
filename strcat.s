section .text
global _ft_strcat

_ft_strcat:
		push rbp				; push rbp register on stack
		mov rbp, rsp			; move rsp register on rbp register
		sub rsp, 16				; align memory
		
		mov rax, rdi			; mov rdi content into the rax return register
		mov rbx, rsi			; mov rsi content into rbx base pointer register 
		mov rcx, rbx			; copy rbx content into rcx counter register

;; loop rcx register to the end of the rcx string

_loop1:
		inc rbx					; increment rcx register
		cmp rbx, 0				; compare 
		jne _loop1				; jump to loop name if rbx is not equal to 0

;; loop rcx and rbx registers to the end of the rbx string
;; copy the content of rcx into rbx index

_loop2:
		lea rbx, [rcx]	; copy rcx current byte position into rbx
		inc rcx					; increment rcx register
		inc rbx					; increment rbx register
		cmp rcx, 0				; compare rcx with 0
		jne _loop2				; jump to loop2 name if rcx is not equal to 0

		mov rsp, rbp			; move rbp on rsp register
		pop rbp					; pop rbp register from stack
		ret						; return program

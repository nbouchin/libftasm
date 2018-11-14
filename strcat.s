section .text
global _ft_strcat

_ft_strcat:
		push rbp							; push rbp register on stack
		mov rbp, rsp						; move rsp register on rbp register
		sub rsp, 16							; align memory
		
		mov rax, rdi						; mov rdi content into the rax return register

;; loop rcx register to the end of the rcx string

_loop1:
		inc rdi								; increment rdi register
		cmp byte [rdi], 0					; compare rdi with 0
		jnz _loop1							; jump to loop name if rdi is not equal to 0

;; loop rcx and rbx registers to the end of the rbx string
;; copy the content of rcx into rbx index

_loop2:
		mov bl, byte [rsi]					; copy rsi current byte into bl 8 bit register
		mov [rdi], bl							; copy bl 8 bit register into rdi 8 bit part 
		inc rsi								; increment rsi register
		inc rdi								; increment rdi register
		cmp byte [rsi - 1], 0					; compare rsi with 0
		jnz _loop2							; jump to loop2 name if rcx is not equal to 0

		mov rsp, rbp						; move rbp on rsp register
		pop rbp								; pop rbp register from stack
		ret									; return program

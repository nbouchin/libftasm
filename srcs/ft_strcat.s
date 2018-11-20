section .text
global _ft_strcat

_ft_strcat:
	mov rax, rdi						; mov rdi content into the rax return register
	cmp byte [rdi], 0
	je _loop2

;; loop rcx register to the end of the rcx string
_loop1:
	inc rdi								; increment rdi register
	cmp byte [rdi], 0					; compare rdi with 0
	jnz _loop1							; jump to loop name if rdi is not equal to 0

;; loop rcx and rbx registers to the end of the rbx string
;; copy the content of rcx into rbx index

_loop2:
	mov r11, [rsi]						; copy rsi current byte into bl 8 bit register
	mov [rdi], r11						; copy bl 8 bit register into rdi 8 bit part 
	inc rsi								; increment rsi register
	inc rdi								; increment rdi register
	cmp byte [rsi], 0					; compare rsi with 0
	jnz _loop2							; jump to loop2 name if rcx is not equal to 0
	ret									; return program

section .text
global _ft_isalnum
extern _ft_isalpha
extern _is_digit

_ft_isalnum:
		call _ft_isalpha
		call _ft_isdigit
		ret

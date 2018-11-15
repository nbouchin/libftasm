# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nbouchin <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/27 13:56:26 by nbouchin          #+#    #+#              #
#    Updated: 2018/11/09 15:03:41 by nbouchin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    = 	libft_asm.a
ENAME	=	test
CC      = 	clang
NCC		=	nasm
HEADER  = 	includes/
FLAGS   = 	-Wall -Wextra -Werror
NFLAGS	=	-f macho64
SRCDIR  = 	srcs/
OBJDIR  = 	objs/
SRC		=	ft_bzero.s \
			ft_strcat.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isalnum.s

TSRC	=	main.c

TSRCS	= $(addprefix $(SRCDIR), $(TSRC))
SRCS	= $(addprefix $(SRCDIR), $(SRC))
OBJS	= $(addprefix $(OBJDIR), $(SRC:.s=.o))

all: $(OBJDIR) $(NAME) test

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

$(OBJDIR):
	mkdir -p objs 

$(OBJDIR)%.o: $(SRCDIR)%.s $(HEADER)libft_asm.h
	$(NCC) -o $@ $< $(NFLAGS) -I $(HEADER)

test: 
	$(CC) -o $(ENAME) $(TSRCS) $(OBJS)

clean:
	rm -rf objs

fclean: clean
	rm -rf $(NAME) $(ENAME)

re: fclean all

.PHONY: all clean fclean re

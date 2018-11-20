# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nbouchin <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/27 13:56:26 by nbouchin          #+#    #+#              #
#    Updated: 2018/11/20 12:38:51 by nbouchin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    	= 	libfts.a
TEST_NAME	=	test
CC      	= 	clang
NCC		=	nasm
HEADER  	= 	includes/
FLAGS   	= 	-Wall -Wextra -Werror
NFLAGS		=	-f macho64
SRCDIR  	= 	srcs/
OBJDIR  	= 	objs/
SRC		=	ft_bzero.s \
			ft_strcat.s \
			ft_strncat.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_toupper.s \
			ft_tolower.s \
			ft_puts.s \
			ft_strlen.s \
			ft_memset.s \
			ft_memcpy.s \
			ft_strdup.s \
			ft_cat.s \
			ft_memcmp.s \
			ft_memchr.s

TEST_SRC	=	main.c

TEST_SRCS	= $(addprefix $(SRCDIR), $(TEST_SRC))
TEST_OBJS	= $(addprefix $(OBJDIR), $(TEST_SRC:.c=.o))
SRCS		= $(addprefix $(SRCDIR), $(SRC))
OBJS		= $(addprefix $(OBJDIR), $(SRC:.s=.o))

all: $(NAME)

$(NAME): $(OBJDIR) $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

$(OBJDIR):
	mkdir -p objs 

$(OBJDIR)%.o: $(SRCDIR)%.s $(HEADER)libft_asm.h
	$(NCC) -o $@ $< $(NFLAGS) -I $(HEADER)

test:  $(OBJDIR) $(OBJS)
	$(CC) -o $(TEST_NAME) $(TEST_SRCS) $(OBJS)

clean:
	rm -rf objs

fclean: clean
	rm -rf $(NAME) $(TEST_NAME)

re: fclean all

.PHONY: all clean fclean re

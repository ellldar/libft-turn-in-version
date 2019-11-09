# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esupatae <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/18 11:40:06 by esupatae          #+#    #+#              #
#    Updated: 2019/09/23 03:08:53 by esupatae         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = 	ft_abs.c ft_atoi.c ft_bzero.c ft_get_int_len.c ft_isalnum.c \
		ft_isalpha.c ft_isascii.c ft_isdigit.c ft_islower.c ft_isprint.c \
		ft_isupper.c ft_itoa.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c \
		ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c \
		ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c \
		ft_memset.c ft_pow.c ft_putchar.c ft_putchar_fd.c ft_putendl.c \
		ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c \
		ft_skip_char.c ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c \
		ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c \
		ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c \
		ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c \
		ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c \
		ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c
FLAGS = -Wall -Wextra -Werror
OBJ = $(SRCS:.c=.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME):
	@gcc -c $(SRCS) $(FLAGS) -I.
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

norm:
	@norminette $(SRCS)
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acarlott <acarlott@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/14 23:11:22 by acarlott          #+#    #+#              #
#    Updated: 2025/01/16 17:49:31 by acarlott         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CFLAGS = -Wall -Werror -Wextra
CC = gcc
HEADER = ./include
AR = ar rcs
OBJS_DIR = .objs/libft/

SRCS =	ft_atoi.c \
		ft_itoa.c \
		ft_split.c \
		ft_bzero.c \
		ft_memset.c \
		ft_memcmp.c \
		ft_memchr.c \
		ft_memcpy.c \
		ft_strchr.c \
		ft_calloc.c \
		ft_strlen.c \
		ft_strdup.c \
		ft_substr.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_strlcat.c \
		ft_strjoin.c \
		ft_strlcpy.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strrchr.c \
		ft_strnstr.c \
		ft_tolower.c \
		ft_strtrim.c \
		ft_toupper.c \
		ft_memmove.c \
		ft_striteri.c \
		ft_putstr_fd.c \
		ft_putnbr_fd.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c\
		ft_check_convert.c \
		ft_putstr.c \
		ft_printf.c \
		ft_putchar.c \
		ft_putnbr_int.c \
		ft_putnbr_base.c \
		ft_print_memory.c \
		ft_putnbr_unsigned.c


OBJS = $(addprefix $(OBJS_DIR), $(SRCS:.c=.o))

$(OBJS_DIR)%.o: %.c | $(OBJS_DIR)
	${CC} ${CFLAGS} -I ${HEADER} -MMD -c $< -o $@ 


all: $(NAME)

$(NAME): $(OBJS)
	echo "\033[1;34m-> Creating.."
	$(AR) $(NAME) $(OBJS)
	echo "\033[1;32m-> Success !\033[1;33m libft created"

clean:
	echo "\033[1;31m-> Cleaning All objects.."
	rm -rf .objs

fclean: clean
	echo "\033[1;31m-> Cleaning Executable.."
	rm -f $(NAME)

re: fclean all

# Create object directory if necessary
$(OBJS_DIR):
	mkdir -p $(OBJS_DIR)

-include $(OBJS:.o=.d)

.SILENT:

.PHONY: all clean fclean re

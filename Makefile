# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acarlott <acarlott@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/14 23:11:22 by acarlott          #+#    #+#              #
#    Updated: 2023/03/09 11:20:28 by acarlott         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CFLAGS = -Wall -Werror -Wextra
CC = cc
HEADER = ./include
AR = ar rcs

SRCS_LIB =	lib_core/ft_atoi.c \
		lib_core/ft_itoa.c \
		lib_core/ft_split.c \
		lib_core/ft_bzero.c \
		lib_core/ft_memset.c \
		lib_core/ft_memcmp.c \
		lib_core/ft_memchr.c \
		lib_core/ft_memcpy.c \
		lib_core/ft_strchr.c \
		lib_core/ft_calloc.c \
		lib_core/ft_strlen.c \
		lib_core/ft_strdup.c \
		lib_core/ft_substr.c \
		lib_core/ft_isalnum.c \
		lib_core/ft_isalpha.c \
		lib_core/ft_isascii.c \
		lib_core/ft_isdigit.c \
		lib_core/ft_isprint.c \
		lib_core/ft_strlcat.c \
		lib_core/ft_strjoin.c \
		lib_core/ft_strlcpy.c \
		lib_core/ft_strmapi.c \
		lib_core/ft_strncmp.c \
		lib_core/ft_strrchr.c \
		lib_core/ft_strnstr.c \
		lib_core/ft_tolower.c \
		lib_core/ft_strtrim.c \
		lib_core/ft_toupper.c \
		lib_core/ft_memmove.c \
		lib_core/ft_striteri.c \
		lib_core/ft_putstr_fd.c \
		lib_core/ft_putnbr_fd.c \
		lib_core/ft_putchar_fd.c \
		lib_core/ft_putendl_fd.c \
		lib_core/ft_lstnew.c \
		lib_core/ft_lstadd_front.c \
		lib_core/ft_lstsize.c \
		lib_core/ft_lstlast.c \
		lib_core/ft_lstadd_back.c \
		lib_core/ft_lstdelone.c \
		lib_core/ft_lstclear.c \
		lib_core/ft_lstiter.c \
		lib_core/ft_lstmap.c\

OBJS = ${SRCS_LIB:.c=.o}

./lib_core/%.o:	./lib_core/%.c	${HEADER}/libft.h
	${CC} ${CFLAGS} -I${HEADER} -g -c $< -o $@ 

all: ${NAME}

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

# .SILENT:

.PHONY: all clean fclean re bonus

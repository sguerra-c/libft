# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sguerra- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/08 17:38:24 by sguerra-          #+#    #+#              #
#    Updated: 2021/05/06 13:07:36 by sguerra-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libft.a

SRC =	ft_memset.c			\
		ft_bzero.c			\
		ft_memcpy.c			\
		ft_memccpy.c		\
		ft_memmove.c		\
		ft_memchr.c			\
		ft_memchr.c			\
		ft_memcmp.c			\
		ft_strlen.c			\
		ft_strlcpy.c		\
		ft_strlcat.c		\
		ft_strchr.c			\
		ft_strrchr.c		\
		ft_strnstr.c		\
		ft_strncmp.c		\
		ft_atoi.c			\
		ft_isalpha.c		\
		ft_isdigit.c		\
		ft_isalnum.c		\
		ft_isascii.c		\
		ft_isprint.c		\
		ft_toupper.c		\
		ft_tolower.c		\
		ft_calloc.c			\
		ft_strdup.c			\
		ft_substr.c			\
		ft_strjoin.c		\
		ft_strtrim.c		\
		ft_split.c			\
		ft_itoa.c			\
		ft_strmapi.c		\
		ft_putchar_fd.c		\
		ft_putstr_fd.c		\
		ft_putendl_fd.c		\
		ft_putnbr_fd.c			

SRC-B =	ft_lstnew.c			\
		ft_lstadd_front.c	\
		ft_lstsize.c		\
		ft_lstlast.c		\
		ft_lstadd_back.c	\
		ft_lstdelone.c		\
		ft_lstclear.c		\
		ft_lstiter.c		\
		ft_lstmap.c			\
		$(SRC)

OBJ			= $(SRC:.c=.o)

OBJ-B		= $(SRC-B:.c=.o)

CC			= gcc

CFLAGS		= -Wall -Werror -Wextra
 
all:		$(NAME)

$(NAME):	$(OBJ) 
			ar rc $(NAME) $(OBJ)
			ranlib $(NAME)	

bonus:	 	$(OBJ-B)
			ar rc $(NAME) $(OBJ-B)
			ranlib $(NAME)
		
.PHONY:		all clean fclean bonus re

clean:	
			rm -f $(OBJ-B)

fclean:		clean
			rm -f $(NAME)
			
re: 		fclean all

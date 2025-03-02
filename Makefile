# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jyolando <jyolando@student.21-school.ru    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/10 00:02:43 by jyolando          #+#    #+#              #
#    Updated: 2021/07/10 00:02:43 by jyolando         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			=	ft_isalnum.c ft_isprint.c ft_memcmp.c  ft_putchar_fd.c ft_split.c \
					ft_strlcat.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c \
					ft_itoa.c ft_memcpy.c  ft_putendl_fd.c ft_strchr.c  ft_strlcpy.c \
					ft_tolower.c ft_bzero.c   ft_isascii.c \
					ft_memmove.c ft_putnbr_fd.c  ft_strdup.c  ft_strlen.c  ft_strrchr.c \
					ft_toupper.c ft_calloc.c  ft_isdigit.c ft_memchr.c  ft_memset.c  \
					ft_putstr_fd.c  ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_strnstr.c \
					ft_striteri.c

OBJS			=	$(SRCS:.c=.o)

BONUS			=	ft_lstnew.c ft_lstsize.c ft_lstadd_front.c ft_lstlast.c \
					ft_lstadd_back.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c \
					ft_lstmap.c

BONUS_OBJS		=	$(BONUS:.c=.o)

HEADER			=	libft.h

CC 				= gcc
CFLAGS			= -Wall -Werror -Wextra -I$(HEADER)

RM				= rm -f

NAME			= libft.a

.PHONY:			all clean fclean re bonus

all:			$(NAME)

$(NAME):		$(OBJS) $(HEADER)
				ar rcs $(NAME) $?

clean:
				$(RM) $(OBJS) $(BONUS_OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

bonus:			$(BONUS_OBJS) $(HEADER)
				ar rcs $(NAME) $?

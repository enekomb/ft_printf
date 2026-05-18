# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: emunoz <emunoz@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/17 11:51:39 by emunoz            #+#    #+#              #
#    Updated: 2023/02/02 11:52:21 by emunoz           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libftprintf.a

CC 			= 	gcc
CFLAGS 		= 	-Wall -Wextra -Werror
AR 			= 	ar rcs
RM 			= 	rm -f

PRINTFLIB	=	ft_printf.c 		\
				ft_choose_format.c 	\
				ft_putchar.c 		\
				ft_putint.c 		\
				ft_putstr.c 		\
				ft_puthexa.c 		\

OBJS		= $(PRINTFLIB:%.c=%.o)

all:		$(NAME)

$(NAME): 	$(OBJS)
		 	$(AR) $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)
			@echo "Objects removed"

fclean:		clean
			$(RM) $(NAME)
			@echo "Library removed"

re:			fclean all

.PHONY:		all clean fclean re
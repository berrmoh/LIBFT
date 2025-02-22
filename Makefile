NAME = libft.a
CC = gcc
FLAGS = -Wall -Werror -Wextra 
SRC =	ft_atoi.c\
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_isdigit.c\
		ft_isprint.c\
		ft_putchar_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_putstr_fd.c\
		ft_strchr.c\
		ft_strdup.c\
		ft_strlcpy.c\
		ft_strlcat.c\
		ft_strlen.c\
		ft_strncmp.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_bzero.c\
		ft_memset.c\
		ft_memcpy.c\
		ft_memchr.c\
		ft_memmove.c\
		ft_memcmp.c\
		ft_strrchr.c\
		ft_strnstr.c\
		ft_calloc.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_split.c\
		ft_striteri.c\
		ft_strmapi.c\
		ft_itoa.c

BONUS_SRC = ft_lstnew_bonus.c\
			ft_lstadd_front_bonus.c

OBJ = $(SRC:.c=.o)
BONUS_OBJ = $(BONUS_SRC:.c=.o)

all : $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) -c $(FLAGS) $(OBJ) libft.h

$(NAME) : $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus : $(BONUS_OBJ)
	ar rcs $(NAME) $(OBJ) $(BONUS_OBJ)
clean : 
	rm -f $(OBJ) $(BONUS_OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re bonus
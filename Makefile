NAME = libft.a
SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
	 ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c  \
	 ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c \
	 ft_putendl_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c \
	 ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
	 ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c \

O_SRCS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c\
		ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c\

HEADER = libft.h
CFLAGS = -Wall -Wextra -Werror
OBGS = $(SRCS:.c=.o)
O_OBGS = $(O_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBGS)
	ar rcs $(NAME) $(OBGS)

bonus: $(O_OBGS) 
	ar rcs $(NAME) $(O_OBGS)

%.o : %.c $(HEADER)
	cc $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBGS) $(O_OBGS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.SECONDARY: $(OBGS)
.PHONY: all clean fclean re

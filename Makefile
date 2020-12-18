NAME = get_next_line.exe 

MAKEFILE = ./Makefile

ANSWERS = ./answers/ans-test-usual\

SRCS = ./src/get_next_line.c ./src/get_next_line_utils.c\

TESTS_SRC_USUAL = ./test/test_usual_case.c\

TESTS_SRC_FD = ./test/test_zero_fd.c\

FILES = 1-angel 2-girl 3-totoro 9-lum-chan 4-empty 5-newlines 6-line-1 6-line-2 7-lines 8-tolstoy.txt \

FLAGS = -Wall -Werror -Wextra

BUF = -D BUFFER_SIZE=

CC = gcc

dattebayo: usual2 zero2 usual128 zero128 usual4096 zero4096

usual2: $(SRCS) $(TESTS_SRC_USUAL) $(MAKEFILE) 
	@echo " )==========================================================================================================================================================("
	@echo "(       BUFFER_SIZE = 2 | BUFFER_SIZE = 2 | BUFFER_SIZE = 2 | BUFFER_SIZE = 2 | BUFFER_SIZE = 2 | BUFFER_SIZE = 2 | BUFFER_SIZE = 2 | BUFFER_SIZE = 2        )"
	@echo " )==========================================================================================================================================================("

	@$(CC) $(FLAGS) $(SRCS) $(TESTS_SRC_USUAL) $(BUF)2 -o $(NAME) 
	@./$(NAME) $(FILES) > res-test-usual
	@diff -u res-test-usual ./answers/ans-test-usual > diffs-usual && bash awesome.sh && cat intro-art && echo "" && bash massage.sh|| bash error.sh && cat diffs-usual

zero2: $(SRCS) $(TESTS_SRC_USUAL) $(MAKEFILE) $(ANSWERS)
	@$(CC) $(FLAGS) $(SRCS) $(TESTS_SRC_USUAL) $(BUF)2 -o $(NAME) 
	@rm -f res-test-zero
	@$(CC) $(FLAGS) $(SRCS) $(TESTS_SRC_FD) $(BUF)2 -o $(NAME) 
	@./$(NAME) < 1-angel >> res-test-zero
	@./$(NAME) < 2-girl >> res-test-zero
	@./$(NAME) < 3-totoro >> res-test-zero
	@./$(NAME) < 4-empty >> res-test-zero
	@./$(NAME) < 5-newlines >> res-test-zero
	@./$(NAME) < 6-line-1 >> res-test-zero
	@./$(NAME) < 6-line-2 >> res-test-zero
	@./$(NAME) < 7-lines >> res-test-zero
	@./$(NAME) < 9-lum-chan >> res-test-zero
	@./$(NAME) < 8-tolstoy.txt >> res-test-zero
	@diff -u res-test-zero ./answers/ans-test-zero > diffs-zero && bash massage.sh || bash error.sh && cat diffs-zero
	@bash end.sh

usual128: $(SRCS) $(TESTS_SRC_USUAL) $(MAKEFILE) 
	@echo " )==========================================================================================================================================================("
	@echo "(          BUFFER_SIZE = 128 | BUFFER_SIZE = 128 | BUFFER_SIZE = 128 | BUFFER_SIZE = 128 | BUFFER_SIZE = 128 | BUFFER_SIZE = 128 | BUFFER_SIZE = 128         )"
	@echo " )==========================================================================================================================================================("
	@$(CC) $(FLAGS) $(SRCS) $(TESTS_SRC_USUAL) $(BUF)128 -o $(NAME) 
	@./$(NAME) $(FILES) > res-test-usual
	@diff -u res-test-usual ./answers/ans-test-usual > diffs-usual && bash awesome.sh && cat intro-art && echo "" && bash massage.sh|| bash error.sh && cat diffs-usual

zero128: $(SRCS) $(TESTS_SRC_USUAL) $(MAKEFILE) $(ANSWERS)
	@rm -f res-test-zero
	@$(CC) $(FLAGS) $(SRCS) $(TESTS_SRC_FD) $(BUF)128 -o $(NAME) 
	@./$(NAME) < 1-angel >> res-test-zero
	@./$(NAME) < 2-girl >> res-test-zero
	@./$(NAME) < 3-totoro >> res-test-zero
	@./$(NAME) < 4-empty >> res-test-zero
	@./$(NAME) < 5-newlines >> res-test-zero
	@./$(NAME) < 6-line-1 >> res-test-zero
	@./$(NAME) < 6-line-2 >> res-test-zero
	@./$(NAME) < 7-lines >> res-test-zero
	@./$(NAME) < 9-lum-chan >> res-test-zero
	@./$(NAME) < 8-tolstoy.txt >> res-test-zero
	@diff -u res-test-zero ./answers/ans-test-zero > diffs-zero && bash massage.sh || bash error.sh && cat diffs-zero
	@bash end.sh

usual4096: $(SRCS) $(TESTS_SRC_USUAL) $(MAKEFILE) 
	@echo " )==========================================================================================================================================================("
	@echo "(      BUFFER_SIZE = 4096 | BUFFER_SIZE = 4096 | BUFFER_SIZE = 4096 | BUFFER_SIZE = 4096 | BUFFER_SIZE = 4096 | BUFFER_SIZE = 4096 | BUFFER_SIZE = 4096      )"
	@echo " )==========================================================================================================================================================("
	@$(CC) $(FLAGS) $(SRCS) $(TESTS_SRC_USUAL) $(BUF)128 -o $(NAME) 
	@./$(NAME) $(FILES) > res-test-usual
	@diff -u res-test-usual ./answers/ans-test-usual > diffs-usual && bash awesome.sh && cat intro-art && echo "" && bash massage.sh|| bash error.sh && cat diffs-usual

zero4096: $(SRCS) $(TESTS_SRC_USUAL) $(MAKEFILE) $(ANSWERS)
	@rm -f res-test-zero
	@$(CC) $(FLAGS) $(SRCS) $(TESTS_SRC_FD) $(BUF)4096 -o $(NAME) 
	@./$(NAME) < 1-angel >> res-test-zero
	@./$(NAME) < 2-girl >> res-test-zero
	@./$(NAME) < 3-totoro >> res-test-zero
	@./$(NAME) < 4-empty >> res-test-zero
	@./$(NAME) < 5-newlines >> res-test-zero
	@./$(NAME) < 6-line-1 >> res-test-zero
	@./$(NAME) < 6-line-2 >> res-test-zero
	@./$(NAME) < 7-lines >> res-test-zero
	@./$(NAME) < 9-lum-chan >> res-test-zero
	@./$(NAME) < 8-tolstoy.txt >> res-test-zero
	@diff -u res-test-zero ./answers/ans-test-zero > diffs-zero && bash massage.sh || bash error.sh && cat diffs-zero
	@bash end.sh
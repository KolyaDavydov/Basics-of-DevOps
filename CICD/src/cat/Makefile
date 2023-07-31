CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11

s21_cat: s21_cat.o
	$(CC) s21_cat.o -o s21_cat

s21_cat.o: s21_cat.c
	$(CC) $(CFLAGS) -c s21_cat.c

clean:
	rm *.o s21_cat

rebiuld:
	clean
	make

testcat: s21_cat
	../../test/test_cat.sh

check_style:
	cp ../../materials/linters/.clang-format .clang-format
	clang-format -n *.c *.h 2> ../../test/cat_style.txt
	rm .clang-format


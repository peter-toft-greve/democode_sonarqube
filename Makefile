all: clean
	gcc -o demo main.c ext_fct.c -g --coverage -fprofile-arcs -ftest-coverage
	./demo
	find . -name "*.c" -exec gcov {} \;

clean:
	rm -f demo *.gcov *.gc*

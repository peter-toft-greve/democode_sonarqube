all: clean
	gcc -o demo main.c ext_fct.c -g --coverage -fprofile-arcs -ftest-coverage
	./demo
	gcovr -o demo -o demo.gcov

clean:
	rm -f demo *.gcov *.gc*

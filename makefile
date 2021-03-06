all:	Map.hpp 
	g++ test1.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	./out
debug:	
	g++ -g test1.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	gdb ./out

valgrind:
	g++ test1.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	valgrind ./out	

valgrind_detail:
	g++ test1.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	valgrind --leak-check=full ./out

minimal:
	g++ minimal.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	./out
test-scaling:
	g++ test-scaling.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	./out
test-kec:
	g++ test-kec.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	./out
test:
	g++ test.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	./out
morse:
	g++ morseex.cpp -Wall -Wextra -pedantic -ldl -std=c++11 -o out
	./out

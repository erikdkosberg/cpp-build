# Define compiler and flags
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

# Define target and object files
TARGET = my_program
OBJS = main.o math_utils.o

all: my_program

my_program: main.o math_utils.o
	g++ main.o math_utils.o -o my_program

main.o: main.cpp
	g++ -c main.cpp -o main.o

math_utils.o: math_utils.cpp
	g++ -c math_utils.cpp -o math_utils.o

clean:
	rm -f *.o *.i *.s my_program


CC=clang++
CFLAGS=-c -Wall

all: myprogram

myprogram: main.o other.o
	$(CC) main.o other.o -o myprogram

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

other.o: other.cpp
	$(CC) $(CFLAGS) other.cpp

clean:
	rm -rf *.o myprogram

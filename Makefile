CC=gcc
CFLAGS=-Wall -std=c99

all: tienda

tienda: main.o usuarios.o productos.o
	$(CC) $(CFLAGS) -o tienda main.o usuarios.o productos.o

main.o: main.c usuarios.h productos.h
	$(CC) $(CFLAGS) -c main.c

usuarios.o: usuarios.c usuarios.h
	$(CC) $(CFLAGS) -c usuarios.c

productos.o: productos.c productos.h
	$(CC) $(CFLAGS) -c productos.c

clean:
	rm tienda *.o

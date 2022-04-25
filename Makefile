CC=gcc

_OBJ= server.o client.o

%.o:%.c
	$(CC) -c -o $@ $< 

server: server.o
	$(CC) -o $@ $^ -pthread 
	
client: client.o
	$(CC) -o $@ $^ -pthread

all: server client

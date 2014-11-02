CC = gcc
LIBS = -lpcap -liconv
CFLAGS = -Wall -g


.PHONY: all
all: zlevoclient

zlevoclient	: md5.o zlevoclient.o
	$(CC) $(CFLAGS) -o $@ md5.o zlevoclient.o $(LIBS)

md5.o	: md5.c md5.h
	$(CC) $(CFLAGS) -c $<

zlevoclient.o : zlevoclient.c
	$(CC) $(CFLAGS) -c $<
	
clean :
	rm -v *.o zlevoclient

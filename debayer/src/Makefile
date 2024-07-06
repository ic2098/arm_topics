.phony: debayer clean


CFLAGS= -Ofast -march=native -Wall -g

debayer: debayer.c debayer.h
	gcc $(CFLAGS) -o debayer debayer.c

clean:
	rm debayer
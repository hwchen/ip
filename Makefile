CC=gcc
CFLAGS=-O3

ip1: ip1.c
	${CC} ${CFLAGS} ip1.c -o ip1

ip2: ip2.c
	${CC} ${CFLAGS} ip2.c -o ip2

ip1_func.s: ip1_func.c
	${CC} ${CFLAGS} -S ip1_func.c -o ip1_func.s

ip2_func.s: ip2_func.c
	${CC} ${CFLAGS} -S ip2_func.c -o ip2_func.s

.PHONY: ip assembly clean

ip: ip1 ip2

assembly: ip1_func.s ip2_func.s

all: ip assembly

clean:
	rm ip1 ip2 ip1_func.s ip2_func.s

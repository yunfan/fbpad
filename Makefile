CC = cc
CFLAGS = -Wall -O2
LDFLAGS =

all: fbpad
%.o: %.c conf.h
	$(CC) -c $(CFLAGS) $<
fbpad: fbpad.o term.o pad.o draw.o font.o isdw.o scrsnap.o
	$(CC) -o $@ $^ $(LDFLAGS)
install: fbpad
	cp courr.tf /usr/share/fonts/courr.tf
	cp fbpad /usr/bin/fbpad
clean:
	rm -f *.o fbpad

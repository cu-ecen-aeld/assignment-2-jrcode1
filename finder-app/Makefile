all: writer
SRC = writer.c
OBJ = writer.o
CROSS_COMPILE ?=

CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Werror

LDFLAGS = 
writer: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f writer $(OBJ)

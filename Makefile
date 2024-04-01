CC=gcc
CFLAGS= -Wall -Wextra -g
SRC =  ./src
#CFLAGS=  -g DHAVE_STDINT_H
OUT =  ./bin

P1_SOURCE = $(SRC)/P1.c
P2_SOURCE = $(SRC)/P2.c
P3_SOURCE = $(SRC)/P3.c
P4_SOURCE = $(SRC)/P4.c
P1_TARGET = P1
P2_TARGET = P2
P3_TARGET = P3
P4_TARGET = P4
all:$(P1_TARGET)\
	$(P2_TARGET)\
	$(P3_TARGET)\
	$(P4_TARGET)

$(P1_TARGET): $(P1_SOURCE)
	@echo "Compile $^"
	$(CC) $(CFLAGS) -o $(OUT)/$@ $^ 
$(P2_TARGET): $(P2_SOURCE)
	@echo "Compile $^"
	$(CC) $(CFLAGS) -o $(OUT)/$@ $^ 
$(P3_TARGET): $(P3_SOURCE)
	@echo "Compile $^"
	$(CC) $(CFLAGS) -o $(OUT)/$@ $^ 
$(P4_TARGET): $(P4_SOURCE)
	@echo "Compile $^"
	$(CC) $(CFLAGS) -o $(OUT)/$@ $^ 


clean:
	rm -f $(P1_TARGET)\
		$(P2_TARGET)\
		$(P3_TARGET)\
		$(P4_TARGET)

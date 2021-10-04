CC=g++
CFLAGS=-W -g

target=main.exe

objects = main.o array.o rangearray.o

$(target) : $(objects)
	$(CC) $(CFLAGS) -o $(target) $(objects)

main.o : main.cpp Array.h RangeArray.h

array.o : array.cpp Array.h

rangearray.o : rangearray.cpp RangeArray.h

.PHONY : clean
clean : 
	rm $(target) $(objects)

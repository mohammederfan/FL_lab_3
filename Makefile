calc: add.tab.c lex.yy.c
	gcc -o calc add.tab.c lex.yy.c -lfl -lm

add.tab.c add.tab.h: add.y
	bison -d add.y

lex.yy.c: addlex.l add.tab.h
	flex addlex.l

clean:
	rm -f calc add.tab.c add.tab.h lex.yy.c

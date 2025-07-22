%{
#include <stdio.h>
#include <math.h>
int yylex(void);
void yyerror(const char *s) { fprintf(stderr, "%s\n", s); }
%}

%token NUMBER
%left '+' '-'
%left '*' '/'
%right '^'

%%
input:
    input line
    |
    ;

line:
    '\n'
    | expr '\n' { printf("= %d\n", $1); }
    ;

expr:
    NUMBER         { $$ = $1; }
    | expr '+' expr { $$ = $1 + $3; }
    | expr '-' expr { $$ = $1 - $3; }
    | expr '*' expr { $$ = $1 * $3; }
    | expr '/' expr { $$ = $3 != 0 ? $1 / $3 : 0; }
    | expr '^' expr { $$ = pow($1, $3); }
    ;
%%

int main() {
    printf("Enter expressions:\n");
    return yyparse();
}

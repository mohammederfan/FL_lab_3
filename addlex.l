%{
#include "add.tab.h"
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[\n]        { return '\n'; }
[ \t]       ; // ignore spaces
.           { return yytext[0]; }
%%

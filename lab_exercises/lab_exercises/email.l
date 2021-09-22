%{
#include <stdio.h>
%}


%%
([A-Za-z]|[0-9])+[\.]?([A-Za-z]|[0-9])+[\@]([A-Za-z])+[\.]([A-Za-z])+ {printf("%s is a valid email", yytext);}
.* {printf("%s is invalid email!", yytext);}
%%

int yywrap(){
	return 1;
}

void main()
{
	yylex();
}

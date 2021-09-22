%{
#include <stdio.h>
%}


%%
[A-Za-z]([A-Za-z0-9])* {printf("%s is an identifier", yytext);}
{"if"|"switch"} {printf("%s is an keyword", keyword);}
.* {printf("%s is invalid!", yytext);}
%%

int yywrap(){
	return 1;
}

void main()
{
	yylex();
}

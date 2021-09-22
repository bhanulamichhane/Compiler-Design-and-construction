%{
#include <stdio.h>
%}
%%
if|else|switch {printf("keyowrd");}
[a-z]([a-z]|[0-9])* {printf("IDENTIFIER");}
[0-9]* {printf("NUMBER");}
.* {printf("INVALID");}
%%
int main()
{
	yylex();
	return 0;
}

int yywrap(){return 1;}

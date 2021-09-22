%{
	#include<stdio.h>
        #include<ctype.h>
	#include "y.tab.h"
	extern int yylval;
%}

%%
[0-9]* { yylval = atoi(yytext); return num;}
[-+][0-9]+ { return num;}
"\n" {return 0;}
. {printf("\nk\n"); getch(); return 0;}

%%

int yywrap()
{
	return 1;
}
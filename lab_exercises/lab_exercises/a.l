%{
	#include<stdio.h>
%}

%%
"if"|"then" {printf("\nkeyword\n"); getch(); exit(0);}
[a-zA-Z][0-9a-zA-Z]*  {printf("\nIdentifier\n"); getch(); exit(0);}
[0-9]+ {printf("\nNumber\n"); getch(); exit(0);}
.* {printf("%s is invalid!", yytext); getch(); exit(0);}
%%

int main()
{
        printf("\nEnter a string:\n");
        yylex();
	return 0;
}

int yywrap()
{
   return 1;
}
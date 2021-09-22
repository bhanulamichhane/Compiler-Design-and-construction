/*WAP IN lex that recognizes identifier keyword and number 
a) IDENTIFIER starts with a letter followed by  any number of digit or letters 
b) "if" and "then" are keywords
c) A string of digits only with length >=1
*/

%{
	#include<stdio.h>
%}

%%
"if"|"then" {printf("\nkeyword\n"); getch(); exit(0);}
[aa-zA-Z][0-9a-zA-Z]* {printf("\nIdentifier\n");getch(); exit(0);}
[0-9]+ {printf("\nNumber\n");getch(); exit(0);}
.* {printf("%s is invalid:", yytext); getch(); exit(0);}

%%
int main()
{       printf("Enter a String:\n");
        yylex();
	return 0;
}

int yywrap()
{
return 1;
}
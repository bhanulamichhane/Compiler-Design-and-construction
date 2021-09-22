%{
	#include<stdio.h>
%}

%token num

%% 
e: t {printf("valid"); getch();}
;
t: f
;
f: num

;
%%

main()
{
   printf("\nEnter an expression:\n");
   yyparse();
}

yyerror()
{
  printf("invalid expression\n"); getch();
}

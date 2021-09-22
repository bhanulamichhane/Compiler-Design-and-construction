/*

TEXTUAL REPRESENTATION OF DFA (makes coding easier)
---------------------------------------------------

   START (reject):  <----- start state
	  f: F
	  other: START
	  
   F (reject):
	  f: F
	  o: FO
	  other: START
	  
   FO (reject):
	  f: F
	  r: FOR
	  other: START
	  
   FOR (accept):
	  f: F
	  other: START

*/


#include <stdio.h>
#include <conio.h>

enum STATE {state_START, state_F, state_FO, state_FOR};

enum STATE start(int c);
enum STATE f(int c);
enum STATE fo(int c);
enum STATE forr(int c);


int main()
{
	int c;
	enum STATE current = state_START;
	while((c=getchar())!=EOF)
	{
		if(current == state_START)
		{
			current = start(c);
		}
		else if(current == state_F)
		{
			current = f(c);
		}
		else if(current == state_FO)
		{
			current = fo(c);
		}
		else 
		{
			current = forr(c);
		}
	
	}
}

enum STATE start(int c){
	enum STATE next;
	if (c=='f'){ next = state_F; }
	else { next = state_START; }
	return next;
}

enum STATE f(int c){
	enum STATE next;
	if (c=='f'){ next = state_F; }
	else if (c=='o'){ next = state_FO; }
	else { next = state_START; }
	return next;
}

enum STATE fo(int c){
	enum STATE next;
	if (c=='f'){ next = state_F; }
	else if (c=='r'){ next = state_FOR; }
	else { next = state_START; }
	return next;
}

enum STATE forr(int c){
	enum STATE next;
	printf("\nkeyword for found!\n");
	if (c=='f'){ next = state_F; }
	else { next = state_START; }
	return next;
}

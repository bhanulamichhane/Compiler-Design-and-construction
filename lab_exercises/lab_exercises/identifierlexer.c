#include <stdio.h>
#include <conio.h>
#include <ctype.h>


void main()
{
	char word[20];
	int i =0;
	printf("\nEnter a string:\n");
	gets(word);
	if(isalpha(word[0])) 
	{ 
	    i++;
	   	while(word[i] != '\0')
		{
			if(!isalpha(word[i]) && !isdigit(word[i])) 
			{
				printf("\nInvalid identifier!\n");
				getch(); return;
			}
			i++;
		}	
		printf("\nValid identifier!\n");
	}
	else
	{
		printf("\nInvalid identifier!\n");
	}
    getch();
	
}

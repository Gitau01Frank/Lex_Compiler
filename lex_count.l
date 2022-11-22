%{
#include <stdio.h>
int words = 0, character = 0;
%}

%%
[a-zA-Z] character++;
[' ' | .] words++;
"a-z" fprintf(yyout, "A-Z");
%% 

int main()
{
	yyin = fopen("assignment1.txt", "r");
	yyout = fopen("assignment1.txt", "w");
	yylex();
	printf("Number of words: %d\n", words);
	printf("Size: %d:\n", character);
	return (0);
}

int yywrap()
{
	return 1;
}

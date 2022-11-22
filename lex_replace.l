%{
	#include<stdio.h>
%}

%%
abc+ fprintf(yyout, "ABC");
.|\n fprintf(yyout, "%s", yytext);
%%
int main()
{
	yyin = fopen("input.txt", "r");
	yylex();
	return (0);
}
int yywrap()
{
	return (1);
}

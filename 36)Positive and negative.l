%option noyywrap
%{
	#include<stdio.h>
%}

%%
^[-][0-9]+ {printf("%d is a Posivite number",yytext;)}
^[0-9]+ {printf("%d is a Negative number",yytext;)}
%%
int main()
{
	printf("Enter input: ");
	yylex();
}

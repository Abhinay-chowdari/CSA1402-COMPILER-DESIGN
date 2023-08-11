%option noyywrap
%{
	#include<stdio.h>
%}

%%
[0-9]+|[0-9]*|.[0-9]+ {printf("%s is a Number\n",yytext);}
#.* {printf("%s is a comment\n",yytext);}
%%
int main()
{

	return 0;
}

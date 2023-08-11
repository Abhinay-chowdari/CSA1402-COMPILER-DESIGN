%option noyywrap
%{
%}

%%
[0-9]+ {printf("Valid Digit\n");}
.* {printf("Invalid\n");}
%%
int yywrap() {return 1;}
int main()
{
	printf("Enter input: ");
	yylex();

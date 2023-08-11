%option noyywrap
%{

%}

%%
(https)|(ftps)?:\/\/[a-zA-Z0-9]+(.[a-zA-Z+=?]*)* {printf("Valid URL");}
%%
int main()
{
	printf("Enter URL: ");
	yylex();
}

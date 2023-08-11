%option noyywrap
%{
	int cont_id,cont_key;
%}
digit [0-9]
letter [a-zA-Z]
%%
(stdio.h|conio.h) {printf("%s is a standard library\n",yytext);}
(include|void|main|int) {printf("%s is a keyword\n",yytext);}
{letter}({letter}|{digit})* {printf("%s is an Identifier\n",yytext);}
\"(\\.|[^"\\"])*\" {printf("%s is a string\n",yytext);}
%%
int main()
{
	FILE *fp;
	char myfile[20];
	printf("Enter file name: ");
	scanf("%s",myfile);
	fp = fopen(myfile,"r");
	yyin = fp;
	yylex();
	fclose(yyin);
}

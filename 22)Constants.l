%option noyywrap
%{
	int nconstant;
%}

%%
[0-9]+ {nconstant++; printf("%s is a constant",yytext);}
%%
int main()
{
	FILE *f;
	char myfile[10];
	printf("Enter the file name: ");
	scanf("%s",myfile);
	f = fopen(myfile,"r");
	yyin = f;
        yylex();
        printf("No of constants: %d\n",nconstant);
	fclose(yyin);
}

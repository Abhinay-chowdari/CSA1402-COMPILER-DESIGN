%option noyywrap
%{
	int nmacro,nheader;
%}

%%
^#define {nmacro++;}
^#include {nheader++;}
%%
int main()
{
	FILE *f;
	char myfile[10];
	printf("Enter the file name: ");
	scanf("%s",myfile);
	f = fopen(myfile,"r");
	yyin = fp;
        yylex();
        printf("No of macros: %d\n",nmacro);
	printf("No of headers: %d\n",nheader);
	fclose(yyin);
}

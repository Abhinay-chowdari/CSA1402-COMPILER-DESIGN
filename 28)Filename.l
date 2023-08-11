%option noyywrap
%{
	int nline;
%}

start \/\*
end \*\/
%%
\/\/(.*) {}
[start](.*)[end] {}
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

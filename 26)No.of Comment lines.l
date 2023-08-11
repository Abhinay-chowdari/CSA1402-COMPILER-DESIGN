%option noyywrap
%{
	int tags;
%}

%%
"<"[^>]*">" {tags++; printf("%s",yytext);
.|\n {}
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
	printf("No of tags : %d\n",tags);
	fclose(yyin);
}

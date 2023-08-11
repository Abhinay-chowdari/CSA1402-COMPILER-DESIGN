%option noyywrap
%{
	int ncaps;
%}

%%
. 
. {}
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
	printf("No of capitals: %d\n",ncaps);
	fclose(yyin);
}

%{
int flag=0;
%}
%%
[a-z . 0-9]+"@"[a-z]+".com"|".in" { flag=1; }
%%
int yywrap(){ return 1;}
int main()
{
	yylex();
	if(flag==1){
		printf("Valid Email Address");
	}
	else{
		printf("Invalid Email Address");
	}
}

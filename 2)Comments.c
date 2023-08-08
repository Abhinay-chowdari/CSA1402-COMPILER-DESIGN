//2. Program to Identify comment lines
#include<stdio.h>
#include<conio.h>
#include<string.h>
int main(){
	char input[30];
	int len,flag=0;
	printf("Enter a line of text:\n");
	scanf("%[^\n]s",input);
	len = strlen(input);
	if((input[0]=='/' && input[1]=='/')){
		printf("---Single Line Comment---");
		flag = 1;
	}
	if(input[0]=='/' && input[1]=='*'){
		if(input[len-2]=='*' && input[len-1]=='/'){
			printf("---Multi-Line Comment---");
			flag = 1;
		}
		else{
			printf("Not a comment");
		}
	}
	if(flag==0){
		printf("Not a comment");
	}
	getch();
	return 0;
}

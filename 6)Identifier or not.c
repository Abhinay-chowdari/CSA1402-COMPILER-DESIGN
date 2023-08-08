#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<ctype.h>
int main(){
	int i, flag = 0;
	char input[50];
	printf("Enter an Identifier: ");
	scanf("%[^\n]s",input);
	for(i=0;input[i]!='\0';i++){
		if(isalpha(input[i])){
			flag = 0;
			continue;
		}
		else{
			flag = 1;
			break;
		}
	}
	if(flag==1){
		printf("It's not an Identifier :(");
	}
	else{
		printf("It's an Identifier :)");
	}
}

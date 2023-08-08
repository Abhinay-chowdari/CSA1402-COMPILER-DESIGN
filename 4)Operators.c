#include<stdio.h>
#include<conio.h>
int main(){
	char input[5];
	printf("Enter an operator:");
	scanf("%[^\n]s",input);
	switch(input[0]){
		case '+':
			printf("Addition Operator");
			break;
		case '-':
			printf("Subtraction Operator");
			break;
		case '*':
			printf("Multiplication Operator");
			break;
		case '/':
			printf("Division Operator");
			break;
		case '%':
			printf("Modulus Operator");
			break;
		case '=':
			printf("Equal to Operator");
			break;
		case '>':
			if(input[1]!='='){
				printf("Greater than Operator");
			}
			break;
		case '<':
			if(input[1]!='='){
				printf("Lesser than Operator");
			}
			break;
		case '!':
			if(input[1]=='='){
				printf("Not Equal Operator");
			}
			break;
		default:
			printf("Not an Operator");
	}
	if(input[0]=='>'){
		if(input[1]=='='){
			printf("Greater than and Equal to Operator");
		}
	}
	if(input[0]=='<'){
		if(input[1]=='='){
			printf("Lesser than and Equal to Operator");
		}
	}
	if(input[0]=='='){
		if(input[1]=='='){
			printf("Double Equals Operator");
		}
	}
	if(input[0]=='+'){
		if(input[1]=='='){
			printf("Addition Assignment Operator");
		}
	}
	if(input[0]=='-'){
		if(input[1]=='='){
			printf("Subtration Assignment Operator");
		}
	}
	if(input[0]=='|'){
		if(input[1]=='|'){
			printf("Bitwise OR Operator");
		}
	}
	if(input[0]=='&'){
		if(input[1]=='&'){
			printf("Bitwise AND Operator");
		}
	}
	if(input[0]=='\0'){
		printf("?? It's Nothing..");
	}
	getch();
	return 0;
}

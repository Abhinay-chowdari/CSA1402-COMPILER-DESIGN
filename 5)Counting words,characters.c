#include<stdio.h>
#include<conio.h>
#include<string.h>
int main(){
	int i, words = 0, characters = 0, lines = 0;
	char input[100];
	printf("Enter text line: ");
	scanf("%[^~]s",input);
	for(i=0;input[i]!='\0';i++){
		if(input[i]==' '){
			words++;
		}
		else if(input[i]=='\n'){
			lines++;
			words++;
		}
		else{
			characters++;
		}
	}
	printf("%s%d%s%d%s%d","\nWords: ",words,"\nCharacters: ",characters,"\nLines: ",lines);
}

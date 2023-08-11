%option noyywrap
%{
	int vowels=0;
	int consonants=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%
int main()
{
	printf("Enter Input: ");
	lexyy();
	printf("Number of Vowels: %d\n",vowels);
	printf("Number of Consonants: %d\n",consonants);
}

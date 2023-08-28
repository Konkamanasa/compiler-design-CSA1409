%{
int positive_no = 0, negative_no = 0;
%}
%%
^[-][0-9]+ {negative_no++;
			printf("negative number = %s\n",
				yytext);} // negative number

[0-9]+ {positive_no++;
		printf("positive number = %s\n",
				yytext);} // positive number	
%%
int yywrap(){}
int main()											
{
yylex();
printf ("number of positive numbers = %d,"
		"number of negative numbers = %d\n",
				positive_no, negative_no);
return 0;
}

Output:

G:\lex>flex positive_neg_nums.l

G:\lex>gcc lex.yy.c

G:\lex>a.exe
-10
negative number = -10

20
positive number = 20

number of positive numbers = 1,number of negative numbers = 1

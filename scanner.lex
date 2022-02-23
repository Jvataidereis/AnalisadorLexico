package src;
%%
%{
	private void imprimir(String descricao, String lexema){

		System.out.println(lexema + "-" + descricao);
	}
%}
%class AnalisadorLexico    
%type void


BRANCO = [\n||\t|\r]
ID = [_|a-z|A-Z][a-z|A-Z|0-9_]*
SOMA = "+"
SUBTRAI = "-"
MULTI = "*"
DIVID = "/"
INTEIRO = 0|[1-9][0-9]* 


%%
			

"if"			{imprimir("Palavra reservada", yytext());}
"then"			{imprimir("Palavra reservada", yytext());}
{BRANCO}		{imprimir("Espaço em branco ", yytext());}
{ID}			{imprimir("Identificador ", yytext());}
{SOMA}			{imprimir("Operador de soma ", yytext());}
{SUBTRAI}		{imprimir("Operador de subtração", yytext());}
{MULTI}			{imprimir("Operador de multiplicação", yytext());}
{DIVID}			{imprimir("Operador de divisão", yytext());}
{NATURAL}		{imprimir("Numero inteiro ", yytext());}
. { throw new RuntimeException("Caractere invalido" + yytext()); }
import java_cup.runtime.Symbol;


%%


/*%cupsym Simbolo*/
%cup
%public
%class Lexico
%line
%column
%char


LETRA = [a-zA-Z]
DIGITO = [0-9]
ESPACIO = \t|\f
ID = {LETRA}({LETRA}|{DIGITO}|_)*
CONST_INT = {DIGITO}+
CONST_STRING = {COM}({LETRA}|{DIGITO}|{ESPACIO})*{COM}
OP_MAY = >
OP_IGUAL = =
OP_MEN = < 
OP_MENIG = <=
OP_MAYIG =  >=
OP_DIS= !=
OP_SUMA= \+
OP_RES= -
OP_MUL= \*
OP_DIV= /
OP_AND= &
OP_OR= |
COR_ABRE= [
COR_CIE= ]
PAR_ABRE= (
PAR_CIE= )
LLAV_ABRE= {
LLAV_CIE= }
DOSPUN_IG= :=
COMA= ,
PUNTO= .
DOSPUNTOS= :

%%

<YYINITIAL> {

{COMIENZO.PROGRAMA}		{System.out.println("Token COMIENZO.PROGRAMA encontrado, Lexema "+ yytext());}

{DEFINE}		{System.out.println("Token DEFINE encontrado, Lexema "+ yytext());}

{ENDDEFINE}		{System.out.println("Token ENDDEFINE encontrado, Lexema "+ yytext());}

{FIN.PROGRAMA}		{System.out.println("Token FIN.PROGRAMA encontrado, Lexema "+ yytext());}

{MIENTRAS}		{System.out.println("Token MIENTRAS encontrado, Lexema "+ yytext());}

{IF}		{System.out.println("Token IF encontrado, Lexema "+ yytext());}

{THEN}		{System.out.println("Token THEN encontrado, Lexema "+ yytext());}

{ELSE}		{System.out.println("Token ELSE encontrado, Lexema "+ yytext());}

{LET}		{System.out.println("Token LET encontrado, Lexema "+ yytext());}

{CONST_INT}		{System.out.println("Token CONST_INT, encontrado Lexema "+ yytext());}

{CONST_STRING}		{System.out.println("Token CONST_STRING encontrado, Lexema "+ yytext());}

{>}		{System.out.println("Token OP_MAY encontrado, Lexema "+ yytext());}

{<}		{System.out.println("Token OP_MEN encontrado, Lexema "+ yytext());}

{=}		{System.out.println("Token OP_IGUAL encontrado, Lexema "+ yytext());}

{>=}		{System.out.println("Token OP_MAYIG encontrado, Lexema "+ yytext());}

{<=}		{System.out.println("Token OP_MENIG encontrado, Lexema "+ yytext());}

{!=}		{System.out.println("Token OP_DIS encontrado, Lexema "+ yytext());}

{+}		{System.out.println("Token OP_SUMA encontrado, Lexema "+ yytext());}

{-}		{System.out.println("Token OP_RES encontrado, Lexema "+ yytext());}

{*}		{System.out.println("Token OP_MUL encontrado, Lexema "+ yytext());}

{/}		{System.out.println("Token OP_DIV encontrado, Lexema "+ yytext());}

{&}		{System.out.println("Token OP_AND encontrado, Lexema "+ yytext());}

{|}		{System.out.println("Token OP_OR encontrado, Lexema "+ yytext());}

{[}		{System.out.println("Token COR_ABRE encontrado, Lexema "+ yytext());}

{]}		{System.out.println("Token COR_CIE encontrado, Lexema "+ yytext());}

{(}		{System.out.println("Token PAR_ABRE encontrado, Lexema "+ yytext());}

{)}		{System.out.println("Token PAR_CIE encontrado, Lexema "+ yytext());}

{:=}		{System.out.println("Token DOSPUN_IG encontrado, Lexema "+ yytext());}

{,}		{System.out.println("Token COMA encontrado, Lexema "+ yytext());}

{.}		{System.out.println("Token PUNTO encontrado, Lexema "+ yytext());}

{:}		{System.out.println("Token DOSPUNTOS encontrado, Lexema "+ yytext());}

{{}		{System.out.println("Token LLAV_ABRE encontrado, Lexema "+ yytext());}

{}}		{System.out.println("Token LLAV_CIE encontrado, Lexema "+ yytext());}

{ID}		{System.out.println("Token ID encontrado, Lexema "+ yytext());}
}

[^]		{ throw new Error("Caracter no permitido: <" + yytext() + "> en la linea " + yyline); }

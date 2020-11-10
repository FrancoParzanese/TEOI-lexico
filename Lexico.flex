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
DOSPUN_IG= :=
COMA= ,

 /* Creo que esto todavia no va
EXPRESION = {VAR_NUMERIC}{SIGNOS}{VAR_NUMERIC}
CONDICION = ({EXPRESION})({OP_LOGICOS}({EXPRESION}))+
CONST_FLOAT = {DIGITO}+.{DIGITO}*|.{DIGITO}+
CONST_NUMERIC = {CONST_INT}|{CONST_FLOAT}
VAR_NUMERIC = {CONST_NUMERIC}|{OP_NUMERIC}
VAR_STRING = {CONST_STRING}
ASIGNACION = {ID}{ESPACIO}*={ESPACIO}*({VAR_NUMERIC}|{VAR_STRING})
WHILE = while{ESPACIO}*({CONDICION}){ESPACIO}*\{({SALIDA}|{ASIGNACION})*\}
DECISIONES = if{ESPACIO}*({CONDICION}){ESPACIO}*\{({SALIDA}|{ASIGNACION})*\}
COMENTARIOS = <\/({LETRA}|{DIGITO}|{ESPACIO})*(<\/({LETRA}|{DIGITO}|{ESPACIO})*\/>)*({LETRA}|{DIGITO}|{ESPACIO})*\/>
SALIDA = PRINT{ESPACIO}+{CONST_STRING}
OP_NUMERIC = {VAR_NUMERIC}{OP_ARITMETICOS}{VAR_NUMERIC}
PROGRAMA = BEGIN.PROGRAM({WHILE}|{DECISIONES}|{SALIDA}|{COMENTARIOS}|{ASIGNACION})*END.PROGRAM
*/

%%

<YYINITIAL> {

{ID}		{System.out.println("Token ID encontrado, Lexema "+ yytext());}

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
}

[^]		{ throw new Error("Caracter no permitido: <" + yytext() + "> en la linea " + yyline); }

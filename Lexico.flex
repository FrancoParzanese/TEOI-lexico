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

SIGNOS = >|=|<|>=|<=|!=
OP_ARITMETICOS = \+|-|\*|\/
OP_LOGICOS = and|or
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


%%

<YYINITIAL> {

{ID}		{System.out.println("Token ID encontrado, Lexema "+ yytext());}

{CONST_INT}		{System.out.println("Token CONST_INT, encontrado Lexema "+ yytext());}



}

[^]		{ throw new Error("Caracter no permitido: <" + yytext() + "> en la linea " + yyline); }
package analizadorlexico;

import static analizadorlexico.Tokens.*;

%%
%class Lexer
%type Tokens

// Definición de patrones regulares:
L=[a-zA-Z_]+ // Definición de un identificador que comienza con letras o guion bajo, seguido de más letras o dígitos.
D=[0-9]+ // Definición de un número (dígitos).
espacio=[ ,\t,\r,\r,\n]+ // Definición de espacios en blanco (incluye espacios, tabs, saltos de línea).

%{
    public String strLexeme; // Variable que almacena el lexema asociado a un token.
%}
%%

int | 
string |
double |
char |
boolean |
if |
else |
for |
do |
while |
switch {strLexeme=yytext(); return Reservadas;} // Si detecta palabras clave del lenguaje, las marca como "Reservadas".

{espacio} {/*Ignore*/} // Ignora cualquier espacio en blanco.

"(" {strLexeme=yytext(); return Delimitador;} // Delimitadores, retorna el tipo de delimitador.
")" {strLexeme=yytext(); return Delimitador;}
"{" {strLexeme=yytext(); return Delimitador;}
"}" {strLexeme=yytext(); return Delimitador;}
";" {strLexeme=yytext(); return DelimitadorCierre;} // Retorna el delimitador de cierre para los puntos y comas.

"//".* {/*Ignore*/} // Ignora comentarios de línea.

"=" {return Igual;} // Retorna token para asignación.
"+" {return Suma;} // Retorna token para suma.
"-" {return Resta;} // Retorna token para resta.
"*" {return Multiplicacion;} // Retorna token para multiplicación.
"/" {return Division;} // Retorna token para división.

{L} ({L}|{D})* {strLexeme=yytext(); return Identificador;} // Retorna identificadores que comienzan con una letra o guion bajo.

("(-"{D}+")")|{D}+ {strLexeme=yytext(); return Numero;} // Retorna enteros.
{D}+("."{D}+)? {strLexeme=yytext(); return Numero;} // Retorna números decimales.

 . {return Error;} // Si ningún patrón coincide, se retorna un token de error.

# Analizador Léxico en Java

## Descripción

Este proyecto implementa un analizador léxico en Java utilizando JFlex. El analizador tiene como objetivo procesar un lenguaje de programación básico y reconocer tokens como identificadores, números, operadores y palabras reservadas. La interfaz gráfica permite a los usuarios ingresar código y ver los resultados del análisis léxico en tiempo real.

## Características

- **Interfaz gráfica de usuario (GUI)**: Proporciona un campo de entrada para el código y un área de resultados para mostrar los tokens reconocidos.
- **Reconocimiento de tokens**: Identifica y clasifica los siguientes tipos de tokens:
  - Identificadores
  - Números (enteros y decimales)
  - Operadores (suma, resta, multiplicación, división)
  - Palabras reservadas (if, else, for, etc.)
  - Delimitadores (paréntesis, llaves, punto y coma)
- **Manejo de errores**: Informa al usuario sobre cualquier símbolo no reconocido en el código ingresado.

## Requisitos

- Java Development Kit (JDK) 23 o superior
- JFlex para la generación del analizador léxico
- IDE de Java (por ejemplo, Apache NetBeans IDE 23)

## Estructura del Proyecto

- `src/analizadorlexico/`
  - `AnalizadorLexico.java`: Clase principal que inicializa el analizador y la interfaz gráfica.
  - `Lexer.flex`: Archivo de definición de JFlex que contiene la gramática y las reglas para el analizador léxico.
  - `Lexer.java`: Archivo generado automáticamente por JFlex a partir de `Lexer.flex`. Contiene la implementación del analizador léxico y define cómo se deben reconocer los tokens en el código ingresado.
  - `Tokens.java`: Enumeración que define los tipos de tokens reconocidos por el analizador.
  - `Frm1.java`: Clase que implementa la interfaz gráfica de usuario.

## Cómo Ejecutar el Proyecto

1. **Configuración del entorno**:
   - Asegúrate de tener el JDK instalado y configurado en tu sistema.
   - Instala JFlex y añade su ruta a las variables de entorno si es necesario.

2. **Generación del analizador léxico**:
   - Abre una terminal y navega al directorio donde se encuentra el archivo `Lexer.flex`.
   - Ejecuta JFlex para generar el archivo `Lexer.java`:
     ```bash
     jflex Lexer.flex
     ```

3. **Compilación y ejecución**:
   - Compila el proyecto desde tu IDE o usando la terminal:
     ```bash
     javac src/analizadorlexico/*.java
     ```
   - Ejecuta la clase principal:
     ```bash
     java -cp src analizadorlexico.AnalizadorLexico
     ```

## Uso

- Ingresa el código en el campo de texto de entrada.
- Haz clic en el botón **ANALYZE** para analizar el código.
- Los resultados del análisis aparecerán en el área de resultados.
- Usa el botón **CLEAN** para limpiar los campos de texto.
- Haz clic en **EXIT** para cerrar la aplicación.

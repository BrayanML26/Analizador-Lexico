/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package analizadorlexico;

import java.io.File;

/**
 *
 * @author braya
 */
public class AnalizadorLexico {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Define la ruta del archivo "Lexer.flex" que se utilizará para generar el analizador léxico.
        String route = "C:/JAVA PROJECTS/AnalizadorLexico/src/analizadorlexico/Lexer.flex";
        generateLexer(route);
        
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
        public void run() {
            // Crea una nueva instancia del JFrame (Frm1) que contiene la interfaz de usuario.
            Frm1 frame = new Frm1();
            frame.setTitle("THE BEST COMPILER"); // Establece el título de la ventana.
            frame.setVisible(true);
        }
    });
    }
    
    // Este método genera el analizador léxico utilizando la ruta del archivo especificada.
    public static void generateLexer(String route){
        // Crea un objeto File que representa el archivo "Lexer.flex" en la ruta especificada.
        File file = new File(route);
        JFlex.Main.generate(file);
    }
}

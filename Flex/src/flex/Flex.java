package flex;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class Flex {

	public static void main(String[] args) {
		try {
			FileReader f = new FileReader("C:\\Users\\Franco\\Desktop\\TP-TEOI\\prueba.txt");
			Lexico Lexer = new Lexico(f);
			parser sintactico = new parser(Lexer);
			sintactico.parse();
		} catch (FileNotFoundException e) {
			System.out.println("No se encontró el archivo fuente.");
		} catch (Exception e) {
			System.out.println("Error al parsear el programa.");
		}

	}

}

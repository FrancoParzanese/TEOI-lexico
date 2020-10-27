import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Main {

	public static void main(String[] args) throws IOException {
		try {
			FileReader f = new FileReader("C:\\Users\\Franco\\Desktop\\TPTEOI\\entregamos\\prueba.txt");
			Lexico Lexer = new Lexico(f);
			Lexer.next_token();
		} catch (FileNotFoundException ex) {
			// error.
		}
	}

}

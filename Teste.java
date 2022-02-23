package src;
import java.io.IOException;
import java.io.StringReader;
public class Teste {
	public static void main(String[] args) throws IOException{
		String expr = "if (i=0; i<=5; i++)"
						+ "else 2 + 3+a*5/4-16 then";
		AnalisadorLexico lexical = new AnalisadorLexico(new StringReader(expr));
		lexical.yylex();
	}
}
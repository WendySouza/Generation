package LacosCondicionais;

import java.util.Scanner; 

public class ex1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a, b, c;

		Scanner leia = new Scanner(System.in);

		System.out.println("\nDigite o valor de A: ");
		a = leia.nextInt();
		System.out.println("\nDigite o valor de B: ");
		b = leia.nextInt();
		System.out.println("\nDigite o valor de C: ");
		c = leia.nextInt();

		if (a + b > c) {
			System.out.println("\nA soma de A e B é MAIOR que C.");
		} else if (a + b == c) {
			System.out.println("\n A soma de A e B é IGUAL a C.");
		} else {
			System.out.println("\nA soma de A e B é MENOR que C.");
		}
	}

}

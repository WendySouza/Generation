package LacosCondicionais;

import java.util.Scanner;

public class ex2 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int numero;

		Scanner leia = new Scanner(System.in);

		System.out.println("\nDigite um número: ");
		numero = leia.nextInt();

		if (numero % 2 == 0 && numero > 0) {
			System.out.println("\nO número é par e positivo! ");
		} else if (numero % 2 != 0 && numero > 0) {
			System.out.println("\nO número é impar e positivo! ");
		} else if (numero % 2 == 0 && numero < 0) {
			System.out.printf("\nO número é par e negativo! ");
		} else {
			System.out.println("\nO número é impar e negativo!");
		}
	}
}

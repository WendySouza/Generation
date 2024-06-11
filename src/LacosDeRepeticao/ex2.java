package LacosDeRepeticao;

import java.util.Scanner;

public class ex2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int x, par = 0, impar = 0, numero;

		Scanner leia = new Scanner(System.in);

		for (x = 1; x <= 10; x++) {
			System.out.println("Digite o " + x + "º número:");
			numero = leia.nextInt();

			if (numero % 2 == 0) {
				par++;
			} else {
				impar++;
			}
		}
		System.out.println("\n Total de números pares: " + par);
		System.out.println("\n Total de números ímpares: " + impar);
	}
}

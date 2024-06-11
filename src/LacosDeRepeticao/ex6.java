package LacosDeRepeticao;

import java.util.Scanner;

public class ex6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// feito com o professor

		int num, somaM3 = 0, contM = 0;
		float mediaM3;

		Scanner leia = new Scanner(System.in);

		System.out.println("");

		do {
			System.out.println("\nDigite um número: ");
			num = leia.nextInt();

			if (num == 0) {
				System.out.println("\nVocê digitou ZERO, vamos finalizar o programa.");

			} else {
				if (num % 3 == 0) {
					somaM3 += num;
					contM++;
				}
			}

		} while (num != 0);
		if (contM == 0) {
			System.out.println("\nNão foi possível achar a média...");
		} else {
			mediaM3 = somaM3 / contM;
			System.out.println("\nA média foi de: " + mediaM3);
		}
	}

}

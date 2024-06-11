package ArraysVetorMatriz;

import java.util.Scanner;

public class ex3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[][] elementos = new int[3][3];
		int linha, coluna;

		Scanner leia = new Scanner(System.in);

		for (linha = 0; linha < 3; linha++) {
			for (coluna = 0; coluna < 3; coluna++) {
				System.out.println("\nEntre com o valor da linha " + linha + " e coluna " + coluna + " : ");
				elementos[linha][coluna] = leia.nextInt();

			}
		}

		System.out.println(
				"Elementos na diagonal principal: " + "" + elementos[0][0] + " " + elementos[1][1] + " " + elementos[2][2]);

		System.out.println(
				"Elementos na diagonal secundária: " + "" + elementos[0][2] + " " + elementos[1][1] + " " + elementos[2][0]);

		System.out.println("Soma dos elementos da diagonal principal: " + (elementos[0][0] + elementos[1][1] + elementos[2][2]));

		System.out
				.println("Soma dos elementos da diagonal secundária: " + (elementos[0][2] + elementos[1][1] + elementos[2][0]));
	}

}


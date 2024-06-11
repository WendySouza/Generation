package ArraysVetorMatriz;

import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[] dados = { 2, 5, 1, 3, 4, 9, 7, 8, 10, 6 };
		int numero;
		boolean encontrado = false;

		Scanner leia = new Scanner(System.in);

		System.out.println("\nDigite o número que você deseja encontrar: ");
		numero = leia.nextInt();

		for (int x = 0; x < dados.length; x++) {
			if (numero == dados[x]) {
				System.out.println("\nO número: " + numero + " está localizado na posição: " + x);
				encontrado = true;
				break;

			}

		}
		if (!encontrado) {
			System.out.println("O número " + numero + " não foi encontrado.");
		}
	}

}

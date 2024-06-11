package LacosDeRepeticao;

import java.util.Scanner;

public class ex3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int idade, menores21 = 0, maiores50 = 0;

		Scanner leia = new Scanner(System.in);

		System.out.println("\nDigite uma idade:");
		idade = leia.nextInt();

		while (idade >= 0) {
			if (idade <= 21) {
				menores21++;
			} else if (idade >= 50) {
				maiores50++;
			}
			System.out.println("\nDigite uma idade:");
			idade = leia.nextInt();
		}

		System.out.println("\nTotal de pessoas manores de 21 anos: " + menores21);
		System.out.println("\nTotal de pessoas maiores de 50 anos: " + maiores50);
	}
}

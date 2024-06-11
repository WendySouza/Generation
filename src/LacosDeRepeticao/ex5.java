package LacosDeRepeticao;

import java.util.Scanner;

public class ex5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int num, positivos = 0;

		Scanner leia = new Scanner(System.in);

		do {
			System.out.println("\nDigite um número: ");
			num = leia.nextInt();
			if (num > 0) {
				positivos++;
			}

		} while (num != 0);
		{
			System.out.println("\nA soma dos números positivos é: " + positivos);
		}

	}

}
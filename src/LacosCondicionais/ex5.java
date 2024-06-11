package LacosCondicionais;

import java.util.Scanner;

public class ex5 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int cod, quant;
		float valorF;
		String produto;

		Scanner leia = new Scanner(System.in);

		System.out.println("\n\tEscola uma opção: ");
		System.out.println("\n1 - Cachorro Quente ||  R$ 10,00. ");
		System.out.println("2 - X-Salada        ||  R$ 15,00. ");
		System.out.println("3 - X-Bacon         ||  R$ 18,00. ");
		System.out.println("4 - Bauru           ||  R$ 12,00. ");
		System.out.println("5 - Refrigerante    ||  R$  8,00. ");
		System.out.println("6 - Suco de Laranja ||  R$ 13,00. ");
		cod = leia.nextInt();

		System.out.println("\n\tInforme a Quantidade: ");
		quant = leia.nextInt();

		switch (cod) {
		case 1:
			produto = "Cachorro Quente";
			valorF = 10 * quant;
			System.out.println("\nVocê escolheu " + quant + " unidades de " + produto + ".");
			System.out.printf("Valor total: R$ %.2f.", valorF);
			break;
		case 2:
			produto = "X-Salada";
			valorF = 15 * quant;
			System.out.println("\nVocê escolheu " + quant + " unidades de " + produto + ".");
			System.out.printf("Valor total: R$ %.2f.", valorF);
			break;
		case 3:
			produto = "X-Bacon";
			valorF = 18 * quant;
			System.out.println("\nVocê escolheu " + quant + " unidades de " + produto + ".");
			System.out.printf("Valor total: R$ %.2f.", valorF);
			break;
		case 4:
			produto = "Bauru";
			valorF = 12 * quant;
			System.out.println("\nVocê escolheu " + quant + " unidades de " + produto + ".");
			System.out.printf("Valor total: R$ %.2f.", valorF);
			break;
		case 5:
			produto = "Refrigerante";
			valorF = 8 * quant;
			System.out.println("\nVocê escolheu " + quant + " unidades de " + produto + ".");
			System.out.printf("Valor total: R$ %.2f.", valorF);
			break;
		case 6:
			produto = "Suco de laranja";
			valorF = 13 * quant;
			System.out.println("\nVocê escolheu " + quant + " unidades de " + produto + ".");
			System.out.printf("Valor total: R$ %.2f.", valorF);
			break;
		default:
			System.out.println("\n\tProduto não encontrado!");
		}
	}
}

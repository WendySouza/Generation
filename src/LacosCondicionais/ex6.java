package LacosCondicionais;

import java.util.Scanner;

public class ex6 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String nome, cargo;
		int codCargo;
		float salarioAtual, reajuste;

		Scanner leia = new Scanner(System.in);

		System.out.println("\nNome do(a) colaborador(a): ");
		nome = leia.nextLine();
		System.out.println("\n\tInforme seu cargo de acordo com os códigos abaixo: ");
		System.out.println("\n1 - Gerente");
		System.out.println("2 - Vendedor");
		System.out.println("3 - Supervisor");
		System.out.println("4 - Motorista");
		System.out.println("5 - Estoquista");
		System.out.println("6 - Técnico de TI");
		codCargo = leia.nextInt();
		System.out.println("\nInforme seu salário atual: ");
		salarioAtual = leia.nextFloat();

		switch (codCargo) {
		case 1:
			cargo = "Gerente";
			reajuste = salarioAtual + (salarioAtual * 10 / 100);
			System.out.println("\nNome do(a) colaborador(a): " + nome);
			System.out.println("\nCargo: " + cargo);
			System.out.printf("\nSalário: R$ %.2f", reajuste);
			break;
		case 2:
			cargo = "Vendedor";
			reajuste = salarioAtual + (salarioAtual * 7 / 100);
			System.out.println("\nNome do(a) colaborador(a): " + nome);
			System.out.println("\nCargo: " + cargo);
			System.out.printf("\nSalário: R$ %.2f", reajuste);
			break;
		case 3:
			cargo = "Supervisor";
			reajuste = salarioAtual + (salarioAtual * 9 / 100);
			System.out.println("\nNome do(a) colaborador(a): " + nome);
			System.out.println("\nCargo: " + cargo);
			System.out.printf("\nSalário: R$ %.2f", reajuste);
			break;
		case 4:
			cargo = "Motorista";
			reajuste = salarioAtual + (salarioAtual * 6 / 100);
			System.out.println("\nNome do(a) colaborador(a): " + nome);
			System.out.println("\nCargo: " + cargo);
			System.out.printf("\nSalário: R$ %.2f", reajuste);
			break;
		case 5:
			cargo = "Estoquista";
			reajuste = salarioAtual + (salarioAtual * 5 / 100);
			System.out.println("\nNome do(a) colaborador(a): " + nome);
			System.out.println("\nCargo: " + cargo);
			System.out.printf("\nSalário: R$ %.2f", reajuste);
			break;
		case 6:
			cargo = "Técnico de TI";
			reajuste = salarioAtual + (salarioAtual * 8 / 100);
			System.out.println("\nNome do(a) colaborador(a): " + nome);
			System.out.println("\nCargo: " + cargo);
			System.out.printf("\nSalário: R$ %.2f", reajuste);
			break;
		default:
			System.out.println("\nCargo inválido!");

		}

	}

}

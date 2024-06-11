package EstruturaDeDados;

import java.util.*;

public class ex1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner leia = new Scanner(System.in);
		Queue<String> filaClientes = new LinkedList<String>();
		int opcao;
		String nome;

		do {
			System.out.println("\n 1 - Adicionar um novo Cliente na fila.");
			System.out.println("\n 2 - Listar todos os Clientes na fila.");
			System.out.println("\n 3 - Retirar cliente da fila.");
			System.out.println("\n 0 - Sair.");
			System.out.println("\n\tDigite a opção desejada: ");
			opcao = leia.nextInt();

			switch (opcao) {
			case 1:
				leia.nextLine();
				System.out.println("\nDigite o nome do cliente: ");
				nome = leia.nextLine();
				filaClientes.add(nome);
				System.out.println("\nO cliente " + nome + " foi adicionado à lista!");
				System.out.println("\nFila: " + filaClientes);
				break;
			case 2:
				leia.nextLine();
				if (filaClientes.isEmpty()) {
					System.out.println("\nA fila está vazia!");
				} else
					System.out.println("\nLista de clientes na fila: " + filaClientes);
				break;
			case 3:
				if (filaClientes.isEmpty()) {
					System.out.println("\nA fila está vazia!");
				} else {
					filaClientes.remove();
					System.out.println("\nO cliente foi chamado!");
					System.out.println("\nFila: " + filaClientes);
				}
				break;
			case 0:
				System.out.println("\nO programa foi finalizado!");
				break;
			default:
				System.out.println("\nOpção Inválida!");
			}

		} while (opcao != 0);

	}

}

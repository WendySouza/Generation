package EstruturaDeDados;

import java.util.*;

public class ex2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Stack<String> pilhaLivros = new Stack<>();
		Scanner leia = new Scanner(System.in);
		int opcao;

		do {
			System.out.println("\nMenu:");
			System.out.println("1: Adicionar um novo livro na pilha");
			System.out.println("2: Listar todos os livros da Pilha");
			System.out.println("3: Retirar um livro da pilha");
			System.out.println("0: Finalizar o programa");
			System.out.print("Digite uma opção: ");
			opcao = leia.nextInt();
			leia.nextLine();

			switch (opcao) {
			case 1:
				System.out.print("\nDigite o nome do livro: ");
				String livro = leia.nextLine();
				pilhaLivros.push(livro);
				System.out.println("\nLivro adicionado!");
				break;

			case 2:
				System.out.println("\nLista de Livros na Pilha:");
				if (pilhaLivros.isEmpty()) {
					System.out.println("A Pilha está vazia!");
				} else {
					for (String l : pilhaLivros) {
						System.out.println(l);
					}
				}
				break;

			case 3:
				if (pilhaLivros.isEmpty()) {
					System.out.println("\nA Pilha está vazia!");
				} else {
					String livroRemovido = pilhaLivros.pop();
					System.out.println("\nO Livro " + livroRemovido + " foi retirado da pilha!");
				}
				break;

			case 0:
				System.out.println("\nPrograma Finalizado!");
				break;

			default:
				System.out.println("\nOpção inválida! Tente novamente.");
				break;
			}

		} while (opcao != 0);

	}
}
package Collection;

import java.util.*;

public class ex3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner leia = new Scanner(System.in);
		int numeros;

		Set<Integer> listaDados = new HashSet<>();

		for (int x = 0; x < 10; x++) {
			System.out.println("\nDigite um número: ");
			numeros = leia.nextInt();
			listaDados.add(numeros);
		}
		System.out.println("\n\tListar dados do Set:\n\n");
		Iterator<Integer> iNumeros = listaDados.iterator();

		while (iNumeros.hasNext()) {
			System.out.println(iNumeros.next());
		}
	}

}

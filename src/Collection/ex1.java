package Collection;

import java.util.*;

public class ex1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner leia = new Scanner(System.in);

		ArrayList<String> listaCores = new ArrayList<>();
		String corDigitada;

		System.out.println("\nInforme 5 cores: ");
		for (int x = 0; x < 5; x++) {
			corDigitada = leia.nextLine();
			listaCores.add(corDigitada);
		}

		System.out.println("\n\tCores digitadas:\n\n" + listaCores);

		Collections.sort(listaCores);

		System.out.println("\n\tCores Ordenadas:\n ");
		System.out.println(listaCores);

	}

}

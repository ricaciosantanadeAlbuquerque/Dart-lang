void main() {
  // Contagem crescente de 0 a 10
  for (var i = 0; i <= 10; i++) {
    print("O valor da varial i == $i");
  }

  // contagem decrescente de 10 a 0

  for (int j = 10; j >= 0; j--) {
    print("Contagem do valor de $j");
  }

  // Numeros pares entre 0 e 100 usando o ternário

  for (int i = 0; i <= 10; i++) {
    print("${(i % 2 == 0 ? "é par " : "não é par ")}");
  }

  String nome = "ricacio";
  int numero = 0;

  for (int i = numero; i <= nome.length; i++) {
    if (i % 2 == 0) {
      print(" $i é par ");
    } else {
      print(" $i é impar");
    }
  }

  //  mostrando as letras usando o substring()

  for (int j = 0; j < nome.length; j++) {
    print("${nome.substring(j, j + 1)}"); // neste caso  j não pode ser comparada como menor ou igual, só como menor já que vamos usar j + 1 como parâmetro para função substring() e como é + 1 ele vai até o final da String nome
  }

  //=================================================================================================

  for (int i = 0; i <= 12; i++) {
    if (i == 0) {
      print("$i é multiplo de todos  os números");
    } else if (i % 2 == 0 && i % 3 == 0) {
      print("$i é multiplo de 2 e de 3");
    } else if (i % 3 == 0) {
      print("$i é multiplo de 3");
    } else if (i % 2 == 0) {
      print("$i é multiplo de 2 ");
    } else {
      print(i);
    }
  }

  // ========================= Mostrando os valores do array =====================================================================

  dynamic frutas = ["tomate", "manga", "jambo", "melão", "goiaba", "banana"]; //Array é uma lista dinamica e ordenada de valores  entre chaves.

  for (int j = 0; j < frutas.length; j++) {
    print("Na posição $j temos a fruta == ${frutas[j]}");
  }

  print(frutas.length); // 6 elementos de 0 a 5
}

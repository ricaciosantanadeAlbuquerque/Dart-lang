import 'dart:io';
import 'dart:math';

/**
 * 10 – Faça um programa para sortear 5 números diferentes entre 1 e 10. Armazene os valores sorteados num 
vetor de 5 posições e, em seguida, exiba-os. Atenção: os valores armazenados não podem se repetir.
 */
void main() {
  Random num1 = Random();
  List<int> valores = [];
  int op = 0;
  int i = 0;
  bool aberto = false;

  for (int j = 0; j < 5; j++) {
    int sorte = num1.nextInt(10) + 1;
    print(sorte);
    for (int i = 0; i < valores.length; i++) {
      if (valores[i] == null) {
        valores.add(sorte);
      }
      if (valores[i] == sorte) {
        aberto = true;
      }
    }
    if (aberto == true) {
      print("O valor já existe dentro do array");
    } else {
      valores.add(sorte);
    }
  }

  if (valores.length < 5) {
    exit(0);
  } else {
    print(valores);
  }
}
/// codigo por terminar 
/**
 *  Faça um programa para sortear 5 números diferentes entre 1 e 10. Armazene os valores sorteados num 
vetor de 5 posições e, em seguida, exiba-os. Atenção: os valores armazenados não podem se repetir.
 */
import 'dart:math';

void main() {
  List<int> sorte = [];
  for (var i = 0; i < 5; i++) {
    sorte.add(Random().nextInt(10) + 1);
  }
  print(sorte);

// limpeza 1

  for (int i = 0; i < sorte.length - 1; i++) {
    for (int j = i + 1; j < sorte.length; j++) {
      if (sorte[i] == sorte[j]) {
        sorte.removeAt(i);
      }
    }
  }
  print(sorte);
  // limpeza 2

   for (int i = 0; i < sorte.length - 1; i++) {
    for (int j = i + 1; j < sorte.length; j++) {
      if (sorte[i] == sorte[j]) {
        sorte.removeAt(i);
      }
    }
  }

   print(sorte);
  // limpeza 3
  
   for (int i = 0; i < sorte.length - 1; i++) {
    for (int j = i + 1; j < sorte.length; j++) {
      if (sorte[i] == sorte[j]) {
        sorte.removeAt(i);
      }
    }
  }

  print(sorte);
  // limpeza 4
}

import 'dart:io';

/**
 * Faça um programa, utilizando while e listas, que permita o usuário escrever o nome de cinco pessoas e os mostre na tela.
 */
void main() {
  int cont = 0;
  List<String> nomes = [];
  // 0 a 4
  while (cont < 5) {
    print('Digite seu nome');
    String? nomeEntrada = stdin.readLineSync();

    if (nomeEntrada != null) {
      if (nomeEntrada.isNotEmpty) {
        nomes.add(nomeEntrada);
      }
    }
    cont++;
  }
  print(nomes);
}

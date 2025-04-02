/**
 * Implemente uma função que verifica se uma palavra ou frase é um palíndromo (exemplo: "A base do teto desaba").
 */


import 'dart:io';

void main(List<String> args) {
  print('Digite uma frase Palíndroma por favor');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    if (isPalindromo(frase: entrada)) {
      print('Sim, a frase é palíndroma.  Normal: ${entrada}, ao contrário: ${entrada.split('').reversed.join()}');
    } else {
      print('Não é palíndroma. Normal: ${entrada}, ao contrário ${entrada.split('').reversed.join()}');
    }
  } else {
    print('Digite valores válidos');
  }
}

bool isPalindromo({required String frase}) {
  // Removendo espaços e pontuações e convertendo pata minusculo.
  String fraseLimpa = frase.toLowerCase().replaceAll(RegExp(r'[^\p{L}]',unicode: true), ''); // Remove tudo exceto letras

  return fraseLimpa == fraseLimpa.split('').reversed.join();
}

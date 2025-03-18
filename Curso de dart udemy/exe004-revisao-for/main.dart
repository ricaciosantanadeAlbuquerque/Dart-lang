/**
 *  Escreva um programa que imprima os números de 1 a 10 usando um loop for
 */
import 'dart:io';

void main() {
  loopFor(); // chamada a função for
  loopWhile(); // chamada a função while
}

void loopFor() {
  for (var element = 1; element <= 10; element++) {
    print('contagem $element');
  }
}

/**
 * Crie um programa que peça um número ao usuário e continue pedindo até que ele digite um número maior que 10.
 */

void loopWhile() {
  var element = 0;
  while (element <= 10) {
    print('Digite um número');
    String? numero = stdin.readLineSync();

    if (numero != null && numero.isNotEmpty) {
      try {
        element = int.parse(numero);

        if (element <= 10) { // se for verdade is true
          print('Element: $element');
          continue; //   volta desta linha para o início do laço while, sem checar a parte de baixo.
        } else if (element > 10) { // is true
          print('Element: $element');
          break;
        }
      } catch (e, s) {
        print('Excecao: $element');
        print('Stack Trace: $s');
      }
    }
  }
}

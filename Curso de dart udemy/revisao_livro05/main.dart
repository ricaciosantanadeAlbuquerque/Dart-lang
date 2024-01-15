import 'dart:io';

/**
 * Utilizando a estrutura (if else encadeada), faça um programa que recebe um valor numerico e retorna o dia da semana.
 * é necessário fazer o tratamento da entrada dos valores.
 * 
 */

void main() {
  print('Digite um valor entre 1 e 7');
  String? entradaValor = stdin.readLineSync();

  // tratamento

  if (entradaValor != null) {
    if (entradaValor.isEmpty) { // ? é vazio

      print('ERRO !!! é necessário digitar um valor');

    } else {
      // conversão de valores
      try {
        int weekDay = int.parse(entradaValor);
        // dias da semana com if else

        if (weekDay == 1) {
          print('Domingo');
        } else if (weekDay == 2) {
          print('Segunda');
        } else if (weekDay == 3) {
          print('Terça');
        } else if (weekDay == 4) {
          print('Quarta');
        } else if (weekDay == 5) {
          print('Quinta');
        } else if (weekDay == 6) {
          print('Sexta');
        } else if (weekDay == 7) {
          print('Sabado');
        } else {
          print('Valor fora da faixa ');
          exit(0);
        }
      } catch (e) {
        throw Exception('ERRO!!! $entradaValor não é um  número');
      }
    }
  } else {
    print('Digite um valor válido, diferente de nulo');
  }
}

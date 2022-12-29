import 'Dart:io';

/**
 * Faça um programa que apresenta em tela a soma de todos os números impares entre 1 e mil.
 */
void main(List<String> args) {
  num acumuladoraImpar = 0;

  for (var i = 1; i <= 1000; i++) {
    if (i % 2 != 0) {
      // se i resto da divisão por dois é difirente de zero então {i} é impar
      acumuladoraImpar += i;
    }
  }
  print("|========================================================|");
  print("|                                                        |");
  print("|A soma de todos os valores impares é ${acumuladoraImpar}=============|");
  print("|                                                        |");
  print("|========================================================|");
}

/**
 * Crie uma programa que recebe dez numeros por meio do sdtin e armazene esses números  em um array de dez elementos e apresente em tela as somas dos numeros o maior e menor
 */
import 'dart:io';
import 'dart:math';

void main() {
  Random num1 = Random();
  List<int> numero = [];

  for (var j = 0; j < 10; j++) {
    int valor = num1.nextInt(1000) + 1;
    numero.add(valor);
  }

  print(numero);
  int maior = 0;
  int menor = 1000000000;
  int soma = 0;

  for (int j = 0; j < numero.length; j++) {
    soma += numero[j];

    if (numero[j] > maior) {
      maior = numero[j];
    }

    if (numero[j] < menor) {
      menor = numero[j];
    }
  }

  print("\nA soma de todos os valores é ${soma}");
  print("\n O maior valor é de $maior");
  print("\nO menor valor é de $menor");
}

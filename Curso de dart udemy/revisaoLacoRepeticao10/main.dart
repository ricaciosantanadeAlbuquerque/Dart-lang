/**
 * Faça um programa que leia vários inteiros positivos e mostre, no final, a soma dos 
 * números pares e a soma dos números ímpares. O programa para quando entrar um número 
 *  maior que 1000.
 */
import 'dart:io';

void main() {
  int numero = 0;
  int acumulaPar = 0;
  int acumulaImpar = 0;

  do {
    print(" Digite um número inteiro ! ");
    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada.isNotEmpty) {
        try {
          numero = int.parse(entrada);
          if (numero > 0 && numero < 1000) {
            if (numero % 2 == 0) {
              acumulaPar += numero;
            } else {
              acumulaImpar += numero;
            }
          }
        } catch (NumberFormatException) {
          print(" Digite apenas valores numéricos! ");
        }
      } else {
        print("Digite apenas valores válidos ");
      }
    }
  } while (numero <= 1000);

  print("A soma dos números pares são $acumulaPar ");
  print("A soma dos números impares são $acumulaImpar");
}

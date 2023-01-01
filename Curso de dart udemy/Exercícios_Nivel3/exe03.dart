/**
 * 3 - Escreva um programa que leia 10 números inteiros e os armazene em um vetor. Exiba os elementos do vetor 
  * e,em seguida mostre qual é o maior elemento e a posição que ele se encontra dentro do vetor.
 */
import 'Dart:io';

void main(List<String> args) {
  var numero = [];
  var guardaPosicao;
  var maior = 0; // maior sempre sera inicializado com zero

  for (int j = 0; j < 10; j++) {
    print("Digite um número inteiro");
    String? entrada = stdin.readLineSync();
    int valor = int.parse(entrada!);
    numero.add(valor);
  }

  print("==========================================================================");

  for (int j = 0; j < 10; j++) {
    print(" $j == ${numero[j]}");
    if (numero[j] > maior) {
      maior = numero[j];
      guardaPosicao = j;
    }
  }

  print("O maior valor é ${maior} e está na posição $guardaPosicao");
  
}

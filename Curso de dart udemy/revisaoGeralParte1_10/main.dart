/**
 * Faça um programa que receba a idade de 10 pessoas e escreva a quantidade de pessoas com idades entre 0 
 * e 12 anos.
 */
import 'dart:io';

void main(List<String> args) {
  int contador = 0;
  for (var j = 0; j < 10; j++) {
    print("Digite a sua idade ");
    String? entradaIdade = stdin.readLineSync();

    int idade = int.parse(entradaIdade!); // estou afirmando para o compliador  que entradaIdade não é null, porém pode ser.

    if (idade >= 0 && idade <= 12) {
      contador++;
    }
  }
  print("A Quantidade de pessoas que tem a idade entre 0 e 12 [==${contador}==]");
}

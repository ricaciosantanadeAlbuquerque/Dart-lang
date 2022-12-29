/**
 * 3 – Faça um programa que receba a idade de 10 pessoas e escreva a quantidade de pessoas com idades entre 0 
e 12 anos.
 */
import 'Dart:io';

void main(List<String> args) {
  int cont = 0;
  for (int i = 0; i < 10; i++) {
    // 0 a 9
    print("Por favor digite sua idade! ");
    String? entrada = stdin.readLineSync(); // capturando o valor digitado
    int idade = int.parse(entrada!); // convertendo o valor digitado

    if (idade >= 0 && idade <= 12) {
      cont++;
    }
  }
  print("A quantidade de pessoas com a idade entre 0 e 12 é \[$cont\]");
}

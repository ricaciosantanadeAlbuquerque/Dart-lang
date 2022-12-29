import 'Dart:io';

/**
 * 4 - Faça um programa que fique recebendo números inteiros e contando quantos números foram iguais a 2. Caso 
o usuário digite o número zero, o programa deverá parar de receber valores e exibir quantos números foram 
iguais a 2;

 */
void main() {
  int numero = 1;
  int count = 0;

  while (numero != 0) {
    print("Digite um número por favor! ");
    String? entrada = stdin.readLineSync();
    numero = int.parse(entrada!);

    if (numero == 2) {
      count++;
    }
  }
  print("A Quantidade de valores iguais a 2 foram $count");
}

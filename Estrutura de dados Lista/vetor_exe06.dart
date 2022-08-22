import 'dart:io';

/*
6 - Faça um programa que leia um vetor de 5 posições para números reais e, depois, um código inteiro. Se o 
código for zero, finalize o programa; se for 1, mostre o vetor na ordem direta; se for 2, mostre o vetor na ordem 
inversa. Caso, o código for diferente de 1 e 2 escreva uma mensagem informando que o código é inválido. */
void main() {
  List<double> real = [
    1.8,
    50.55,
    10.20,
    12.12,
    100.00
  ]; // uma lista de 5 posições. 0 a 4
  // em qualquer liguagem de programação o array ou lista começa em zero e vai até o tamanho do vetor menos 1;
  for (int j = 0; j < real.length; j++) {
    print("Por favor digite uma código");
    String? num = stdin.readLineSync(); // entrada de dado
    int num1 = int.parse(num!);
    if (num1 == 0) {
      print("O programa será fechado.");
      exit(0); // sai do programa;
    } else if (num1 == 1) {
      // mostrando o vetor na ordem direta
      for (int i = 0; i < real.length; i++) {
        print(real[i]);
      }
    } else if (num1 == 2) {
      print(real.length);
      for (int j = real.length - 1; j > 0; j--) {
        print("orderm inversa ${real[j]}");
      }
    } else {
      print("Código inválido");
      print("O programa será encerrado ");
      exit(0);
    }
  }
  // este exercício tabém poderia ser feito utilizando o switch() case default
}

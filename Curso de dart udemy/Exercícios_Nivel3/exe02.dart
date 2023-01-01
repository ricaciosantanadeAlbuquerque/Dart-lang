/**
 * 2 - Faça um programa que receba do usuário um vetor com 10 posições. Em seguida deverá ser exibido o maior 
e o menor elemento do vetor.
 */
import 'Dart:io';

void main(List<String> args) {
  int maior = 0;
  int menor = 100000000;
  List<dynamic> numero = [];

  for (var i = 0; i < 10; i++) {
    print("Digite um numero por favor");
    String? num1 = stdin.readLineSync();
    dynamic numerico = int.parse(num1!);
    numero.add(numerico);
  }
  //lendo o vetor e procurando o nemor elemento e o maior elemento

  for (var p in numero) {
    // para cada elemento da minha lista ou array ou vetor jogue para dentro de p

    print("${p}");

    if (p > maior) {
      maior = p;
    }
    if (p < menor) {
      menor = p;
    }
  }
  print("O maior valor contido no Array A é  ${maior}");
  print("O menor valor contido no Array A é  ${menor}");
}

//  Faça um programa que leia três valores (A, B, C) e mostre-os na ordem lida.  Em seguida, mostre-os em ordem crescente e decrescente.
import 'dart:io';

void main() {
  var array = [];
  for (int i = 0; i < 3; i++) {
    print("Digite um valor ");
    String? entrada = stdin.readLineSync();
    int num1 = int.parse(entrada!);
    array.add(num1);
     print("==============================");
    if (i == 2) {
      print(array);
      for (int j = i; j >= 0; --j) {
        print("${array[j]}");
      }
      print("==============================");
      for (int j = 0; j <= i; j++) {
        print("${array[j]}");
      }
    }
  }
}

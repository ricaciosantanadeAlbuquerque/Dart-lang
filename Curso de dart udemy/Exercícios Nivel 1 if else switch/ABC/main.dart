//  - Faça um programa que leia três valores inteiros A, B e C e diga se a soma de A + B é menor que C.
import 'dart:io';


void main() {
  print("Digite um valor inteiro para A ");
  String? a = stdin.readLineSync();
  int A = int.parse(a!);
  print("Digite um valor inteiro para B ");
  String? b = stdin.readLineSync();
  int B = int.parse(b!);
  print("Digite uma valor para C");
  String? c = stdin.readLineSync();
  int C = int.parse(c!);

  // condição ========================================
  if (A + B < C) {
    print("Sim ! a soma de A + B é menor do que C");
  } else {
    print(" Não! a soma de A + B não é do que C");
  }
}

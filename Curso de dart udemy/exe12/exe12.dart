// Faça um programa que receba um número e usando laços de repetição calcule e mostre a tabuada desse número.
import "dart:io";

void main() {
  print(" Digite o valor numerico que você deseja calcular a tabuada");
  String? entrada = stdin.readLineSync();
  int valor = int.parse(entrada!);
  for (var i = 0; i < valor; i++) {
    print("${i+1} x $valor == ${i+1*valor}");
  }
}

// Escreva um programa que leia duas variáveis inteiras e troque o conteúdo entre elas.
import 'dart:io';

void main() {
  print("Digite um valor para começar !");
  String? valorEntrada = stdin.readLineSync();
  print("Digite um segunda valor !");
  String? valor2Entrada = stdin.readLineSync();

  int valor1 = int.parse(valorEntrada!);
  int valor2 = int.parse(valor2Entrada!);

  print("Os valores $valor1 e $valor2");

  int caixa = valor1;
  valor1 = valor2;
  valor2 = caixa;
  
  print("Os valores $valor1 e $valor2");
}

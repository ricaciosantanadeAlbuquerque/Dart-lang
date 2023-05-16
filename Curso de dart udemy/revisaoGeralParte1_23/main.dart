/**
 * . Escreva um programa ler a base e altura de um triângulo, depois calcular e exibir sua área. Fórmula: AREA = 
     (BASE*ALTURA)/2
 */
import 'dart:io';

void main() {
  print("Digite a Altura. ");
  String? altEntrada = stdin.readLineSync();
  print("Digite a base. ");
  String? baseEntrada = stdin.readLineSync();

  double altura = double.parse(altEntrada!);
  double base = double.parse(baseEntrada!);

  double area = (base * altura) / 2;

  print("A área é de $area ");
}

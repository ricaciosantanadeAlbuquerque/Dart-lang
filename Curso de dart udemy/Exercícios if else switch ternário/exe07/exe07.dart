/**
 * Escreva	 um	 programa que	 leia	 as	 medidas	 dos	 lados	 de	 um	 triângulo	 e	
   escreva	se	ele	é	Equilátero,	Isósceles	ou	Escaleno.	Sendo	que:	
− Triângulo	Equilátero:	possui	os	3	lados	iguais.	
− Triângulo	Isóscele:	possui	2	lados	iguais.	
− Triângulo	Escaleno:	possui	3	lados	diferentes
 */
import 'dart:io';

void main() {
  print("Digite o valor do primeiro lado de um triangulo ");
  String? num1 = stdin.readLineSync();
  print("Digite o segundo aldo de um triangulo");
  String? num2 = stdin.readLineSync();
  print("Digite o terceiro lado de um triangulo");
  String? num3 = stdin.readLineSync();

  double lado1 = double.parse(num1!);
  double lado2 = double.parse(num2!);
  double lado3 = double.parse(num3!);

  if (lado1 == lado2 && lado1 == lado3) {
    print("Triângulo Equilátero");
  } else if (lado1 == lado2) {
    print("Triângulo Isóscele");
  } else {
    print("Escaleno");
  }
}

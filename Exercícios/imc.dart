import 'dart:io';
/*1 - O índice de massa corpórea (IMC) de um indivíduo é obtido dividindo-se o seu peso (em Kg) pelo quadrado da 
altura (em metros). Assim, por exemplo, uma pessoa de 1,67m e pesando 55kg tem IMC igual a 19,73. Escreva um 
programa que solicite ao usuário o seu peso em kg e sua altura em metros e, a partir deles, calcule o índice de 
massa corpórea e apresente o resultado de acordo com a situação abaixo.
IMC Situação
< 18,5 Magro
18,5 – 24,9 Normal
25,0 – 29,9 Sobrepeso
30,0 – 34,9 Obeso
35,0 – 39,9 Obesidade mórbida */
void main() {
  print("Digite sua altura Metros");
  String? altura = stdin.readLineSync();
  print("Digite seu peso kg");
  String? peso = stdin.readLineSync();

  double altura1 = double.parse(altura!);
  double peso1 = double.parse(peso!);
  // calculo
  double imc = peso1 / (altura1 * altura1);
  //print("O seu  IMC é ${imc.truncateToDouble()}");

  if (imc < 18.5) {
    print("Você está muito magro, cuidado! ${imc.truncateToDouble()
    } ");
  } else if (imc >= 18.5 && imc <= 24.9) {
    print("Seu IMC é Normal! ${imc.truncateToDouble()}");
  } else if (imc >= 25.0 && imc <= 29.9) {
    print("Você está com sobrepeso ! ${imc.truncateToDouble()}");
  } else if (imc >= 30.0 && imc <= 34.9) {
    print("Você está Obeso ! ${imc.truncateToDouble()}");
  } else {
    print("Você está com Obesidade mórbida ${imc.truncateToDouble()}");
  }

  print("\n Fim !");
}

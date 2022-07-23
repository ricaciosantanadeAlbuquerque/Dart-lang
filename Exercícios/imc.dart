import 'dart:io';

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

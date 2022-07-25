import 'dart:io';

main() {
  String? continuar;
  int homem = 0;
  int mulher = 0;
  double alturaMax = 0.0;
  print("Deseja iniciar o programa ?");
  continuar = stdin.readLineSync();
  while (continuar == "sim") {
    for (int i = 0; i < 4; i++) {
      print(" Digite seu sexo");
      String? sexo = stdin.readLineSync();
      print("Digite sua altura!");
      String? altura = stdin.readLineSync();
      double altura1 = double.parse(altura!);
      if (alturaMax < altura1) {
        alturaMax = altura1;
      }
      if (sexo == "homem" || sexo == "M" || sexo == "m" || sexo == "masculino") {
        homem++;
      } else if (sexo == "mulher" || sexo == "F" || sexo == "f" || sexo == "feminino") {
        mulher++;
      }
    }
    print("Deseja continuar[sim] ou [não] ?");
    continuar = stdin.readLineSync();
  }
  print("A altura máxima é ${alturaMax}");
  print("A quantidade de homens é ${homem}");
  print("A quantidade de mulhres é ${mulher}");
}

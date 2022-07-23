import 'dart:io';

void main() {
  String? continua = "sim";
  while (continua == "sim") {
    print("Digite a distância percorrida");
    String? distancia = stdin.readLineSync();
    double distancia1 = double.parse(distancia!);
    print("Digite o tempo levado para percorrer a Distância");
    String? tempo = stdin.readLineSync();
    double tempo1 = double.parse(tempo!);

    double velocidade = distancia1 / tempo1;
    print("A velocidade média do atleta é ${velocidade.truncateToDouble()} KM por hora");
    print("Deseja continuar ?");
    continua = stdin.readLineSync();
  }
}

import 'dart:io';

void main() {
  String? continuar = "sim";
  while (continuar == "sim") {
    print("Digite a distância");
    String? distancia = stdin.readLineSync();
    int distancia1 = int.parse(distancia!);
    print("Digite o tempo que você levou para fazer o trajeto !");
    String? tempo = stdin.readLineSync();
    double tempo1 = double.parse(tempo!);
    double velocidade = distancia1 / tempo1;
    print("Sua velocidade média foi de ${velocidade}");
    print("Deseja Continuar ! Digite [sim] ou [não] ");
    continuar = stdin.readLineSync();
  }
}

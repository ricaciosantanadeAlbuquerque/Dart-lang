import 'dart:io';
/*6 - Faça um programa que repita as seguintes tarefas, até que a palavra ‘não’ seja digitada:
1. Leia a distância percorrida por um atleta;
2. Leia o tempo que o atleta levou para percorrer a distância;
3. Calcule e exiba sua velocidade média (Velocidade = distancia / tempo);
Pergunte ao usuário se ele deseja continuar a executar o programa (o usuário responderá ‘sim’ ou ‘não’)*/
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

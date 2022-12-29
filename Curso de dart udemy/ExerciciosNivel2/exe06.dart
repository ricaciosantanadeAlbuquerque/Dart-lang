import 'Dart:io';

/**
 * 6 - Faça um programa que repita as seguintes tarefas, até que a palavra ‘não’ seja digitada:
1. Leia a distância percorrida por um atleta;
2. Leia o tempo que o atleta levou para percorrer a distância;
3. Calcule e exiba sua velocidade média (Velocidade = distancia / tempo);
Pergunte ao usuário se ele deseja continuar a executar o programa (o usuário responderá ‘sim’ ou ‘não’).
 */
void main() {
  var controlle = "sim";
 // 1.30 uma hora e trinta minutos 0.30 só trinta minutos
  while (controlle == "sim") {
    print("Digite a distância que você percorreu.");
    String? entrada1 = stdin.readLineSync();
    print("Digite o tempo que você levou para fazer o trajeto");
    String? entrada2 = stdin.readLineSync();

    // conversao ===============================================
    double distancia = double.parse(entrada1!);
    double tempo = double.parse(entrada2!);

    double velocidade = distancia / tempo;

    print("Sua velocidade foi de ${velocidade.toStringAsFixed(2)} KM por hora.");
    print("\n Você deseja continuar se sim \"DIGITE sim\" se não \"DIGITE nao\"");
    String? controle = stdin.readLineSync();
    controlle = controle != null ? controle : exit(0);

  }
}

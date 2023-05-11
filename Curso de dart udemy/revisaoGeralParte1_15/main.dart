/**
 * - Faça um programa que repita as seguintes tarefas, até que a palavra ‘não’ seja digitada:
1. Leia a distância percorrida por um atleta;
2. Leia o tempo que o atleta levou para percorrer a distância;
3. Calcule e exiba sua velocidade média (Velocidade = distancia / tempo);
Pergunte ao usuário se ele deseja continuar a executar o programa (o usuário responderá ‘sim’ ou ‘não’
 */
import 'dart:io';

void main() {
  String opcao = '';

  do {
    print("Digite a distância percorrida em KM !");
    String? disEntrada = stdin.readLineSync();
    print("Digite o tempo que você levou para percorrer a distancia.");
    print("Exemplo: 0.30 são trinta minutos, e 1.30 é uma hora e meia, já 5 seria cinco horas.");
    String? tempoEntrada = stdin.readLineSync();

    // tratamento

    if (disEntrada != null && tempoEntrada != null) {
      if (disEntrada.isNotEmpty == true && tempoEntrada.isNotEmpty == true) {
        try {
          double distancia = double.parse(disEntrada.replaceAll(',','.'));
          double tempo = double.parse(tempoEntrada.replaceAll(',','.'));

          // calculo
          /**
           * 1 vale uma hora 
           * 0.30 vale trinta minutos, e assim por diante
           */

          double velocidade = distancia / tempo;
          print("Sua velocidade média era de ${velocidade.truncate()}Km");
        } catch (e) {
          throw Exception('ERRO! O valor [$disEntrada] ou o valor [$tempoEntrada], não são valores numéricos.');
        }
      } else {
        print("ERRO! Digite valores válidos");
      }
    } else {
      print("ERRO! valor nulo.");
    }
    print("Digite [Sim] para continuar e [nao] para sair ");
    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.isNotEmpty) {
      opcao = entrada;
    } else {
      print("ERRO! Valor digitado [$entrada], o Programa será encerrado ");
      exit(0);
    }
  } while (opcao != 'nao');
}

/**
 *  Faça um programa para ler o número de gols marcados pelo Nacional de Patos e o número de gols marcados 
    pelo Treze. Escrever o nome do time vencedor. Caso não haja vencedor, escrever EMPATE.
 */
import 'Dart:io';

void main() {
  print("Digite o numero de gols marcados pelo Treze");
  String? treze = stdin.readLineSync();
  int trezeGols = int.parse(treze!);
  print("Digite o números de gols marcados pelo Nacional de patos ");
  String? patos = stdin.readLineSync();
  int patosGols = int.parse(patos!);
  if (patosGols > trezeGols) {
    print(" O vencedor é o nacional de Patos");
  } else if (trezeGols > patosGols) {
    print(" O vencedor é o Treze ");
  } else {
    // se nenhum ganhou é porque empatou
    print(" O jogo empatou ");
  }
}

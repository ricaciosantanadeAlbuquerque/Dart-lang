import 'dart:io';
/*5 - Faça um programa para ler o número de gols marcados pelo Nacional de Patos e o número de gols marcados 
pelo Treze. Escrever o nome do time vencedor. Caso não haja vencedor, escrever EMPATE. */
void main() {
  print("Digite o número de gols marcados pelo nacional de Patos.");
  String? patos = stdin.readLineSync();
  print("Digite o número de gols marcados pelo treze");
  String? treze = stdin.readLineSync();

  int patos1 = int.parse(patos!);
  int treze1 = int.parse(treze!);

  if (patos1 > treze1) { // patos fez mais gols
    print("O vencedor é o Nacional de Patos !");
  } else if (treze1 > patos1) {// treze fez mais gols
    print("O vencedor é o treze ");
  } else {
    print("Empate !");
  }
}

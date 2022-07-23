import 'dart:io';

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

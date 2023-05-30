import 'dart:io';
import 'dart:math';

void main() {
  print("Digite os objetos sorteados! ");
  String? entradaA = stdin.readLineSync();
  String? entradaB = stdin.readLineSync();
  String? entradaC = stdin.readLineSync();
  String? entradaD = stdin.readLineSync();

  if (entradaA != null && entradaB != null && entradaC != null && entradaD != null) {
    if (entradaA.isNotEmpty == true && entradaB.isNotEmpty == true && entradaC.isNotEmpty == true && entradaD.isNotEmpty == true) {
      anonima(entradaA, entradaB, entradaC, entradaD);
    }
  }
}

void anonima([String? valor1, String? valor2, String? valor3, String? valor4]) {
  void sorteio({required String a, required String b, required String c, required String d}) {
    Random sorte = Random();
    int op = sorte.nextInt(4) + 1;
    switch (op) {
      case 1:
        print("Você ganhou $a");
        break;
      case 2:
        print("Você ganhou $b !");
        break;
      case 3:
        print("Você ganhou $c !");
        break;
      case 4:
        print("Você ganhou $d !");
        break;
      default:
        print("ERRO! valor fora da faixa, o programa será encerrado.");
    }
  }

  sorteio(a: valor1!, b: valor2!, c: valor3!, d: valor4!);
}

/**
 *  Faça um programa que receba um número e exiba o dia correspondente (1 – domingo, 2 – segunda, 3 – terça, 
 4 – quarta, 5 – quinta, 6 – sexta e 7 – sábado).
 */
import 'dart:io';

void main() {
  print("==========Menu==========");
  print("Digite [1] para domigo ");
  print("Digite [2] para segunda ");
  print("Digite [3] para terça");
  print("Digite [4] para quarta");
  print("Digite [5] para quinta");
  print("Digite [6] para sexta");
  print("Digite [7] para Sábado ");
  String? opEntrada = stdin.readLineSync();

  if (opEntrada != null) {
    if (opEntrada.isNotEmpty) {
      try {
        int op = int.parse(opEntrada);
        switch (op) {
          case 1:
            print("Domingo!");
            break;
          case 2:
            print("Segunda !");
            break;
          case 3:
            print("Terça !");
            break;
          case 4:
            print("Quarta");
            break;
          case 5:
            print("Quinta !");
            break;
          case 6:
            print('Sexta !');
            break;
        }
      } catch (e) {
        throw Exception('ERRO! $opEntrada não é um valor númerico ');
      }
    }
  }
}

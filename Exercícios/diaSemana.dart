import 'dart:io';
/*6 - Faça um programa que receba um número e exiba o dia correspondente (1 – domingo, 2 – segunda, 3 – terça, 
4 – quarta, 5 – quinta, 6 – sexta e 7 – sábado). */
void main() {
  print("======MEUNU======");
  print("Digite [1] para Domingo.");
  print("Digite [2] para Segunda. ");
  print("Digite [3] para terça ");
  print("Digite [4] para quarta ");
  print("Digite [5] para quinta ");
  print("Digite [6] para sexta ");
  print("Digite [7] para Sábado.");

  String? op = stdin.readLineSync();
  int op1 = int.parse(op!);
  switch (op1) {
    case 1:
      print("Domingo.");
      break;
    case 2:
      print("Segunda.");
      break;
    case 3:
      print("Terça");
      break;
    case 4:
      print("Quarta");
      break;
    case 5:
      print("Quinta");
      break;
    case 6:
      print("Sexta");
      break;
    case 7:
      print("Sábado");
      break;
    default:
      print("Valor fora da faixa");
  }
  print("Fim programa !");
}

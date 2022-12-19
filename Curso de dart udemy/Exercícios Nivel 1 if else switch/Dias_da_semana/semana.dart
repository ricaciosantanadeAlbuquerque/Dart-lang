/**
 *  Faça um programa que receba um número e exiba o dia correspondente (1 – domingo, 2 – segunda, 3 – terça, 
 * 4 – quarta, 5 – quinta, 6 – sexta e 7 – sábado).

 */
import "dart:io";

void main(List<String> args) {
  print("Digite um valor numerico e inteiro entre 1 e 7 ");
  String? valorNumerico = stdin.readLineSync();
  int opcao = int.parse(valorNumerico!);

  // Estrutura de multipla escolha ===========================================================
  switch (opcao) {
    case 1:
      print("\nDomingo\n");
      break;
    case 2:
      print("\nSegunda\n");
      break;
    case 3:
      print("\nTerça\n");
      break;
    case 4:
      print("\nQuarta\n");
      break;
    case 5:
      print("\nQuinta\n");
      break;
    case 6:
      print("\nSexta\n");
      break;
    case 7:
      print("\nSábado\n");
      break;
    default:
      print("\nErro! O valor está fora da faixa, O programa será encerrado\n");
      exit(0);// fim programa 
  }
}

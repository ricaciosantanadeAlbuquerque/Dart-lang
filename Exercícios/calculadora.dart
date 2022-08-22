import 'dart:io';
/**8 - Faça um programa que apresente o menu de opções a seguir:
Menu de opções:
1. Média aritmética
2. Média ponderada
3. Sair
Digite a opção desejada
Na opção 1: receber duas notas, calcular e mostrar a média aritmética.
Na opção 2: receber três notas e seus respectivos pesos, calcular e mostrar a média ponderada.
Na opção 3: sair do programa.
Verifique a possibilidade de opção inválida. Neste caso, o programa deverá mostrar uma mensagem */
void main() {
  print("Digite [1] para  calcular média aritimética");
  print("Digite [2]para calcular a média ponderada! ");
  print("Digite [3] ");
  String? op = stdin.readLineSync();
  int opcao = int.parse(op!);
  switch (opcao) {
    case 1:
      print("Digite a primeira nota! ");
      String? n1 = stdin.readLineSync();
      print("Digite a segunda nota !");
      String? n2 = stdin.readLineSync();
      double nota1 = double.parse(n1!);
      double nota2 = double.parse(n2!);
      double media = (nota1 + nota2) / 2;
      print("O valor da média é de ${media}");
      break;
    case 2:
      print("Digite a primeira nota ");
      String? n1 = stdin.readLineSync();
      print("digite o peso");
      String? p1 = stdin.readLineSync();
      print("Digite a segunda nota ");
      String? n2 = stdin.readLineSync();
      print("Digite o peso ");
      String? p2 = stdin.readLineSync();
      print("Digite a terceira nota ");
      String? n3 = stdin.readLineSync();
      print("Digite o peso");
      String? p3 = stdin.readLineSync();
      // CONVERÇÃO
      double nota1 = double.parse(n1!);
      int peso1 = int.parse(p1!);
      double nota2 = double.parse(n2!);
      int peso2 = int.parse(p2!);
      double nota3 = double.parse(n3!);
      int peso3 = int.parse(p3!);
      // CALCULO
      double mediaP = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3);
      int somaP = peso1 + peso2 + peso3;
      double mediaPonderada = (mediaP / somaP);
      print("O valor da média Ponderada é  ${mediaPonderada}");
      break;
    case 3:
      exit(0);
      break;
    default:
  }
}

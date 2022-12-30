import 'Dart:io';
/**
 * 8 - Faça um programa que apresente o menu de opções a seguir:
Menu de opções:
1. Média aritmética
2. Média ponderada
3. Sair
Digite a opção desejada
Na opção 1: receber duas notas, calcular e mostrar a média aritmética.
Na opção 2: receber três notas e seus respectivos pesos, calcular e mostrar a média ponderada.
Na opção 3: sair do programa.
Verifique a possibilidade de opção inválida. Neste caso, o programa deverá mostrar uma mensagem
 */
void main() {
  print("Menu de opções:");
  print("Digite [1] para média aritimética.");
  print("Digite [2] para média ponderada ");
  print("Digite [3] para Sair!");

  String? entrada = stdin.readLineSync();
  int opcao = int.parse(entrada!);
  switch(opcao){
    case 1:
    print("Digite a primeira nota.");
    String? num1 = stdin.readLineSync();
    double nota1 = double.parse(num1!);
    print("Digite a segunda nota.");
    String? num2 = stdin.readLineSync();
    double nota2 =double.parse(num2!);

    double media =  (nota1 + nota2)/2;

    print("Media Aritimética ${media}");
    break;
    case 2:
    print("Digite a primeira nota. ");
    String? num1 = stdin.readLineSync();
    double nota1 = double.parse(num1!);

    print("por favor digite o peso da primeira nota.");
    String? peso = stdin.readLineSync();
    double peso1 = double.parse(peso!);

    print("Digite a segunda nota.");
    String? num2 = stdin.readLineSync();
    double nota2 =double.parse(num2!);

    print("Por favor digite o peso da segunda nota");
    String? x = stdin.readLineSync();
    double  peso2 = double.parse(x!);

    print("Digite a terceira nota. ");
    String? num3 = stdin.readLineSync();
    double nota3 = double.parse(num3!);

    print("Por favor digite o peso da terceira nota");
    String? y = stdin.readLineSync();
    double peso3 = double.parse(y!);

    double calculo = (nota1 * peso1) + (nota2 * peso2) + (nota3 *peso3);
    double mediaPonderada  = calculo/(peso1 + peso2 + peso3);

    print("O valor da média ponderada é ${mediaPonderada}");

    break;
    case 3:
    print("O programa será encerrado ");
    exit(0);
    break;
  }
}

import 'dart:io';

void main() {
  var opcao = menu();
  calculadora(opcao);
}

String menu() {
  print("Digite A para somar ");
  print("Digite B para subtrair");
  print("Digite C para multiplicar!");
  print("Digite D para dividir");
  String? op = stdin.readLineSync();
  return op!.toUpperCase();
}

//==========soma===========
void calculadora(String op) {
  switch (op) {
    case "A":
      print("Digite o primeiro valor ");
      String? entrada = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada1 = stdin.readLineSync();

      if (entrada != null && entrada1 != null) {
        double num1 = double.parse(entrada);
        double num2 = double.parse(entrada1);
        print("Soma: ${num1 + num2}");
      }

      break;
    case "B":
      print("Digite o primeiro valor ");
      String? entrada = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada1 = stdin.readLineSync();

      if (entrada != null && entrada1 != null) {
        double num1 = double.parse(entrada);
        double num2 = double.parse(entrada1);
        print("Subtração: ${num1 - num2}");
      }

      break;
    case "C":
      print("Digite o primeiro valor ");
      String? entrada = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada1 = stdin.readLineSync();

      if (entrada != null && entrada1 != null) {
        double num1 = double.parse(entrada);
        double num2 = double.parse(entrada1);
        print("Mutiplicação: ${num1 * num2}");
      }

      break;
    case "D":
      print("Digite o primeiro valor ");
      String? entrada = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada1 = stdin.readLineSync();

      if (entrada != null && entrada1 != null) {
        double num1 = double.parse(entrada);
        double num2 = double.parse(entrada1);
        print("Divisão: ${num1 / num2}");
      }

      break;
  }
}

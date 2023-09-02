import 'dart:io';

void main() {
  print("Calculadora de Quatro Operações em Dart");

  double num1, num2;
  String operador;

  print("Digite o primeiro número: ");
  num1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo número: ");
  num2 = double.parse(stdin.readLineSync()!);

  print("Escolha uma operação (+, -, *, /): ");
  operador = stdin.readLineSync()!;

  double resultado;

  switch (operador) {
    case '+':
      resultado = num1 + num2;
      break;
    case '-':
      resultado = num1 - num2;
      break;
    case '*':
      resultado = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        resultado = num1 / num2;
      } else {
        print("Erro: Divisão por zero!");
        return;
      }
      break;
    default:
      print("Operador inválido!");
      return;
  }

  print("Resultado: $resultado");
}

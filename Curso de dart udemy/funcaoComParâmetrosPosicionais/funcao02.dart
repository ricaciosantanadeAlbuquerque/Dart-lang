import 'dart:io';

void main() {
  print("Digite um para somar");
  print("Digite dois para subtrair ");
  print("Digite três para multiplicar ");
  print("Digite quatro para dividir");
  String? entrada = stdin.readLineSync();
  int op = int.parse(entrada!);
  double resultado1 = calculador(op);
  print("O valor $resultado1");
}

double calculador([int op = 0]) {
  var resultado;
  switch (op) {
    case 1:
      print("Digite um valor ");
      String? entrada = stdin.readLineSync();
      print("Digite segundo valor ");
      String? entrada1 = stdin.readLineSync();

      double  num1 = double.parse(entrada!);
      double  num2 = double.parse(entrada1!);
      resultado = num1 + num2;

      break;
    case 2:
      print("Digite um valor ");
      String? entrada = stdin.readLineSync();
      print("Digite segundo valor ");
      String? entrada1 = stdin.readLineSync();

      double num1 = double.parse(entrada!);
      double  num2 = double.parse(entrada1!);
      resultado = num1 - num2;
      break;
    case 3:
      print("Digite um valor ");
      String? entrada = stdin.readLineSync();
      print("Digite segundo valor ");
      String? entrada1 = stdin.readLineSync();

      double  num1 = double.parse(entrada!);
      double  num2 = double.parse(entrada1!);
      resultado = num1 * num2;
      break;
    case 4:
      print("Digite um valor ");
      String? entrada = stdin.readLineSync();
      print("Digite segundo valor ");
      String? entrada1 = stdin.readLineSync();

      double  num1 = double.parse(entrada!);
      double  num2 = double.parse(entrada1!);
      resultado = num1 / num2;
      
      break;
    default:
      print(" valor fora da faixa ");
  }
  return resultado;
}

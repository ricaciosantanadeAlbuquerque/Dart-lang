// área de um triângulo
import "dart:io";

void main() {
  print("Digite A Altura do triangulo");
  String? entrada = stdin.readLineSync();
  print("Digite a base do triangulo ");
  String? entradaBase = stdin.readLineSync();

  double altura = double.parse(entrada!);
  double base = double.parse(entradaBase!);

  var resultado = altura * base;

  print("A área do triângulo é  ${resultado}");
}

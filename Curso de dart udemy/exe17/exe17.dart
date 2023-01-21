// Faça uma função que leia um número não determinado de valores positivos e retorna a média aritmética dos mesmos
import 'dart:io';

void main() {
  var resultado = media();
  print("=================");
  print("media: $resultado");
  print("=================");
}

// ================ media =================
double media() {
  String? op = "sim";
  double soma = 0;
  int cont = 0;
  double media = 0;
  while (op == "sim") {
    
    print("Digite um número !");
    String? num1 = stdin.readLineSync();

    double numero = double.parse(num1!);
    soma += numero;
    cont++;
    print("Para continuar [sim] para sair [nao] ");
    op = stdin.readLineSync();
  }

  media = soma / cont;

  return media;
}

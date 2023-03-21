import 'dart:io';

void main() {
  print("Digite [A] para somar.");
  print("Digite [B] para subtrair.");
  print("Digite [C] multiplicar ");
  print("Digite [D] para dividir ");
  String? op = stdin.readLineSync();
  print("Digite o primeiro valor ");
  String? entrada1 = stdin.readLineSync();
  print("Digite o segundo valor ");
  String? entrada2 = stdin.readLineSync();

  num v1 = num.parse(entrada1!);
  num v2 = num.parse(entrada2!);
  var retorno = calcular(op!.toUpperCase(), v1, v2);
  print("\n Resultado:  ${retorno}  \n");

}

num calcular(String letra, num valor1, num valor2) => (letra == 'A')
    ? valor1 + valor2
    : (letra == "B")
        ? valor1 - valor2
        : (letra == 'C')
            ? valor1 * valor2
            : (letra == 'D')
                ? valor1 / valor2
                : 0;
// Isso é o que chamamos de ternário aninhado, um dentro do outro.
import 'Dart:io';

void main() {
  print("Digite [A] para somar ");
  print("Digite [B] para subtrair");
  print("Digite [C] para multiplicar");
  print("Digite [D] para dividir");
  String? opcao = stdin.readLineSync();
  String letra = opcao!.toUpperCase();

  switch (letra) {
    case "A":
      print("Digite o primeiro valor");
      String? entrada1 = stdin.readLineSync();
      print("Digite o segundo valor");
      String? entrada2 = stdin.readLineSync();

      num num1 = num.parse(entrada1!);
      num num2 = num.parse(entrada2!);

      num soma = num1 + num2;

      print("O valor da soma é $soma");

      break;
    case "B":
      print("Digite o primeiro valor ");
      String? entrada1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada2 = stdin.readLineSync();
      num num1 = num.parse(entrada1!);
      num num2 = num.parse(entrada2!);
      num subtracao = num1 - num2;
      print("O valor da subtração é  $subtracao");
      break;
    case "C":
      print("Digite o primeiro valor ");
      String? entrada1 = stdin.readLineSync();
      print("DIgite o segundo valor ");
      String? entrada2 = stdin.readLineSync();

      num num1 = num.parse(entrada1!);
      num num2 = num.parse(entrada2!);
      num resultado = num1 * num2;
      print("O valor da multiplicação é $resultado ");
      break;
    case "D":
      print("Digite um número ");
      String? entrada = stdin.readLineSync();
      print("Digite o segundo número ");
      String? entrada1 = stdin.readLineSync();

      num num1 = num.parse(entrada!);
      num num2 = num.parse(entrada1!);
      num resultado = num1 / num2;

      print("O resultado da divisão é $resultado");
      break;
    default:
      print("Opção inválida!");
      exit(0);
  }
}

import 'dart:io';

void main(List<String> args) {
  print("Digite 1 para somar");
  print("Digite 2 para subtrair");
  print("Dgite 3 para multiplicar ");
  print("Digite 4 para dividir");

  String? entrada = stdin.readLineSync(); // a variável  deve ser do tipo nula e fortimente tipada, não podendo ser do tipo {var}
  int entradaInt = int.parse(entrada!);
  switch (entradaInt) {
    // funcao de multipla escolha
    case 1:
      print("Digite o primeiro valor ");
      String? primeiroValor = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? segundoValor = stdin.readLineSync();
      // conversao
      int intPrimeiro = int.parse(primeiroValor!);
      int intSegundo = int.parse(segundoValor!);
      // calculo
      double resultado = (intPrimeiro + intSegundo).toDouble();
      print("O valor da soma é ${resultado}");
      break;
    case 2:
      print("Por favor digite o primeiro valor ");
      String? valor1 = stdin.readLineSync();
      print("Por favor digite o segundo valor ");
      String? valor2 = stdin.readLineSync();
      int intValor1 = int.parse(valor1!);
      int intValor2 = int.parse(valor2!);

      double resultadoSub = (intValor1 - intValor2).toDouble();
      print("O valor da subtração fopi de ${resultadoSub}");

      break;
    case 3:
      print("por favor digite o primeiro valor ");
      String? x = stdin.readLineSync();
      print(" Digite o segundo valor ");
      String? y = stdin.readLineSync();
      // conversao
      double primeiro = double.parse(x!);
      double segundo = double.parse(y!);
      // calculo
      double resultado = primeiro * segundo;

      print("O resultado da multiplicação ${resultado}");
      break;
    case 4:
      print(" VOCE DESEJA QUE A DIVISÃO SEJA FRACIONADA OU INTEIRA ?");
      String? op = stdin.readLineSync();
      if (op == "inteira" || op == "INTEIRA") {
        print("Digite o primeiro valor ");
        String? valorEntrada1 = stdin.readLineSync(); // variavel de estado local
        print("Digite o segundo valor ");
        String? valorEntrada2 = stdin.readLineSync();
        int x = int.parse(valorEntrada1!);
        int y = int.parse(valorEntrada2!);
        // resultado
        int resultado = (x ~/ y);

        print("\nO resultado da divisao é ${resultado}");
      } else {
        print("Digite o primeiro valor T ");
        String? valorEntrada1 = stdin.readLineSync();
        print("Digite o segundo valor ");
        String? valorEntrada2 = stdin.readLineSync();
        double x = double.parse(valorEntrada1!);
        double y = double.parse(valorEntrada2!);
        double resultado = (x / y); // as Type Casting usa a plavara {as mais o tipo exemplo(as double)}

        print("O resultado com fração ${(resultado).toStringAsFixed(2)}");
          print("\n${(resultado).truncate()}");
      }
      break;
    default:
  }
}

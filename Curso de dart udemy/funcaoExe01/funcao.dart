import 'dart:io';
// FAÇA UMA CALCULADORA
void main(List<String> args) {
  int opcao = executarFuncao(menuOpcao);
  double resultado = calcular(opcao: opcao);

  print("O resultado foi ${resultado.toStringAsFixed(0)}");
}

// função de execução arrow ==============
int executarFuncao(Function p) => p();
// ================================= Menu==================================================
int menuOpcao() {
  // retorna um valor inteiro para quem a ivocar  menuOpcao(); ps! não possui parâmetros
  var resultado;
  print("Digite [1] para soma");
  print("Digite [2] para subtrair");
  print("Digite [3] para multiplicar ");
  print("Digite [4] para dividir");
  print("Digite [5] para sair");
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada == " ") {
    print("Valor não informado! O programa será fechado.");
    exit(0);
  } else {
    //int op = entrada; necessário fazer um convenção
    int op = int.parse(entrada);
    resultado = op;
  }

  return resultado;
}

// ============================ calcular ===================================================
double calcular({int opcao = 0}) {
  var resultado; // variável global   para esta funcao e só.
  switch (opcao) {
    case 1:
      print("Digite o primeiro valor !");
      String? dado1 = stdin.readLineSync();
      print(" Digite o segundo valor por favor ");
      String? dado2 = stdin.readLineSync(); // dado2 variável local

      // converção para double

      double valor1 = double.parse(dado1!); // ! informamos ao compilador que dado1 não é null.
      double valor2 = double.parse(dado2!);

      resultado = (valor1 + valor2);

      break;
    case 2:
      print("Digite o primeiro valor !");
      String? dado1 = stdin.readLineSync();
      print(" Digite o segundo valor por favor ");
      String? dado2 = stdin.readLineSync(); // dado2 variável local

      // converção para double

      double valor1 = double.parse(dado1!);
      double valor2 = double.parse(dado2!);

      resultado = valor1 - valor2;
      break;
    case 3:
      print("Digite o primeiro valor !");
      String? dado1 = stdin.readLineSync();
      print(" Digite o segundo valor por favor ");
      String? dado2 = stdin.readLineSync(); // dado2 variável local

      // converção para double

      double valor1 = double.parse(dado1!);
      double valor2 = double.parse(dado2!);

      resultado = valor1 * valor2;
      break;
    case 4:
      print("Digite o primeiro valor !");
      String? dado1 = stdin.readLineSync();
      print(" Digite o segundo valor por favor ");
      String? dado2 = stdin.readLineSync(); // dado2 variável local

      // converção para double

      double valor1 = double.parse(dado1!);
      double valor2 = double.parse(dado2!);
      resultado = valor1 / valor2;
      break;
    case 5:
      exit(0);
    default:
      print("O valor está fora da faixa! O programa será encerrado ");
      exit(0);
  }
  return resultado;
}

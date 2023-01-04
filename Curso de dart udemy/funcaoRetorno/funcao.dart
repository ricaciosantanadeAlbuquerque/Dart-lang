import "dart:io";

void main() {
  print("Digite 1 para somar ou  2 multiplicar");
  String? entrada = stdin.readLineSync();
  int op = int.parse(entrada!);
  var resultado = soma(op); // op é um argumento passado para variável soma
  print("O  valor é ${resultado}");
}

int soma(int op) {
  // op parâmetro, que recebe o valor
  var soma;
  switch (op) {
    case 1:
      print("Digite o primeiro valor por favor !");
      String? valor1 = stdin.readLineSync();
      int valor = int.parse(valor1!);
      print("Digite o segundo valor!");
      String? valor2 = stdin.readLineSync();
      int valor3 = int.parse(valor2!);
      soma = valor + valor3;
      break;

    case 2:
      print("Digite o primeiro valor por favor !");
      String? valor1 = stdin.readLineSync();
      int valor = int.parse(valor1!);
      print("Digite o segundo valor!");
      String? valor2 = stdin.readLineSync();
      int valor3 = int.parse(valor2!);
      soma = valor * valor3;
      break;
    default:
      print("Valor fora da faixa !");
  }
  return soma;
}

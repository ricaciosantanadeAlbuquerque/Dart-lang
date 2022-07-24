import 'dart:io';

void main() {
  String? continua = "";
  double acumulador = 0.0;
  do {
    double valor = 0;
    print("======Menu======");
    print("Digite [1] para caderno 12 reais");
    print("Digite [2] para Régua 2.50 reais");
    print("Digite [3] para borracha 0.25 centavos");
    print("Digite [4] para mochila 50.00 reais");
    String? op = stdin.readLineSync();
    int opcao = int.parse(op!);
    switch (opcao) {
      case 1:
        valor = 12.00;
        break;
      case 2:
        valor = 2.50;
        break;
      case 3:
        valor = 0.25;
        break;
      case 4:
        valor = 50.00;
        break;
      default:
        print("Valor fora da faixa! ");
    }
    acumulador += valor;
    print("Você deseja continuar esta operção ?\n" +
        "se sim digite [sim] se não digite não [nao]");
        continua = stdin.readLineSync();
  } while (continua == "sim");
  print("O valor total a ser pago é de ${acumulador}");
}

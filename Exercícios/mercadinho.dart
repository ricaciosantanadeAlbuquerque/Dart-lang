import 'dart:io';

void main() {
  int continua = 1;
  double acumulador = 0;
  while (continua >= 1) {
    double valor = 0;
    print("======Menu======");
    print("Digite [1] para caderno 12 reais");
    print("Digite [2] para Régua 2.50 reais");
    print("Digite [3] para borracha 0.25 centavos");
    print("Digite [4] para mochila 50.00 reais");
    String? op = stdin.readLineSync();
    int continua = int.parse(op!);
    switch (continua) {
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
  }
  print("O valor total a ser pago é de ${acumulador}");
}

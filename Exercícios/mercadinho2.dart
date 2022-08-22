import 'dart:io';
/*7 - Faça um programa que repita as seguintes tarefas, até que o número zero seja digitado:
a) Leia o código do produto.
b) Leia a quantidade adquirida.
c) Se o código for 1, escreva ‘Caderno – R$ 12.00’; Se for 2, escreva ‘Régua – R$ 2.50’; Se for 3, escreva ‘Borracha –
R$ 0.25’; Se for 4, escreva ‘Mochila – R$ 50.00’.
d) Calcule e exiba o total a ser pago (valor * quantidade). */
void main() {
  int num1 = 1;
  double acumulador = 0.0;
  
  while (num1 != 0) {
    double valor = 0.0; // a cada laço esta variável reinicia seu valor
    print("Digite [1] para caderno a 12R\$ ");
    print("Digite [2] para regua a 2.50R\$");
    print("Digite [3] para borracha a 0.25R\$");
    print("Digite [4] para mochila 50R\$");
    String? opcao = stdin.readLineSync();
    num1 = int.parse(opcao!);
    if (num1 >= 1 && num1 <= 4) {
      print("Digite a quantidade! ");
      String? qtd = stdin.readLineSync();
      int quantidade = int.parse(qtd!);
      switch (num1) {
        case 1:
          valor = 12.00; // nesta linha valor vale 12.00
          valor = valor *
              quantidade; // aque valor tera seu valor  multiplicado e sobreposto
          break;
        case 2:
          valor = 2.50;
          valor = valor * quantidade;
          break;
        case 3:
          valor = 0.25;
          valor = valor * quantidade;
          break;
        case 4:
          valor = 50.00;
          valor = valor * quantidade;
          break;
      }
    } else {
      print("Valor fora da faixa ! ERRO! ");
    }
    acumulador += valor;
  }
  print("O valor total a ser pago é de ${acumulador}");
}

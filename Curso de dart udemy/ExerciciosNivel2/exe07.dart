import 'Dart:io';
/**
 * 7 - Faça um programa que repita as seguintes tarefas, até que o número zero seja digitado:
a) Leia o código do produto.
b) Leia a quantidade adquirida.
c) Se o código for 1, escreva ‘Caderno – R$ 12.00’; Se for 2, escreva ‘Régua – R$ 2.50’; Se for 3, escreva ‘Borracha –
R$ 0.25’; Se for 4, escreva ‘Mochila – R$ 50.00’.
d) Calcule e exiba o total a ser pago (valor * quantidade).
 */
import 'Dart:io';

void main() {
  int cont = 1;
  double valorTotal = 0;
  double valor = 0;

  while (cont != 0) {
    print("Digite o código do produto");
    String? entrada = stdin.readLineSync();

    // Conversao ======================================================
    int codigo = int.parse(entrada!);

    switch (codigo) {
      case 1:
        print("Caderno no valor de 12.00 R\$.\n");
        print("Digite a quantidade que deseja adiquirir");
        String? entrada1 = stdin.readLineSync();
        int quantidade = int.parse(entrada1!);
        double caderno = 12.00;

        valor = (caderno * quantidade);
        valorTotal += valor; // estamos acumulando os valores
        break;
      case 2:
        print("Regua no valor de 2.50 R\$. \n");
        print("Digite a quantidade que deseja adiquirir.");
        String? entrada1 = stdin.readLineSync();
        int quantidade = int.parse(entrada1!);
        double regua = 2.50;

        valor = (regua * quantidade);
        valorTotal = valor;
        break;
      case 3:
        print(" Borracha no valor de R\$ 0.25. \n");
        print("Digite a quantidade que deseja adiquirir");
        String? entrada1 = stdin.readLineSync();
        int quantidade = int.parse(entrada1!);
        double borracha = 0.25;

        valor = (quantidade * borracha);
        valorTotal += valor;
        break;
      case 4:
        print("Mochila no valor de  R\$ 50.00\n");  // Como o $ é utilizado para mostrar o valor de uma variável, é necessário o contra \ para mostrar po $
        print("Digite a quantidade que deseja adiquirir");
        String? entrada1 = stdin.readLineSync();
        int quantidade = int.parse(entrada1!);
        double mochila = 50.00;
        valor = (mochila * quantidade);

        valorTotal += valor;
        break;

      default:
        print("Valor fora da faixa");
        exit(0); // fim programa
    }
    print("Deseja continuar ? se sim digite [1] se não [0] para sair ");
    String? entrada2 = stdin.readLineSync();
    cont = int.parse(entrada2!);
  }

  print("\nO valor total da compra é de ${valorTotal.toStringAsFixed(1)}"); // \n que bra de linha 
}

/**
 *  Considerando a tabela, a seguir, escreva um programa para ler as quantidades consumidas por um cliente
em cada produto, calcular e exibir o preço total da venda. 
Produto Valor 
Chocolate R$ 1.50 
Refrigerante R$ 2.00 
Misto Quente R$ 2.00 
Sorvete R$ 1.50 
 */
import 'dart:io';

void main() {
  String resposta = 'sim';
  double valorTotal = 0;

  do {
    print("Digite [1] para Chocolate R\$ 1.50");
    print("Digite [2] para Refrigerante R\$ 2.00");
    print("Digite [3] para Misto Quente R\$ 2.00 ");
    print("Digite [4] para Sorvete R\$ 1.50 ");
    String? opEntrda = stdin.readLineSync();
    if (opEntrda != null) {
      if (opEntrda.isNotEmpty == true) {
        try {
          int op = int.parse(opEntrda);
          switch (op) {
            case 1:
              print("Digite a quantidade consumida !");
              String? entradaQtd = stdin.readLineSync();
              int qtd = int.parse(entradaQtd!);

              valorTotal += qtd * 1.50;

              break;
            case 2:
              print("Digite a quantidade consumida !");
              String? entradaQtd = stdin.readLineSync();
              int qtd = int.parse(entradaQtd!);
              valorTotal += qtd * 2.00;
              break;
            case 3:
              print("Digite a quantidade consumida !");
              String? entradaQtd = stdin.readLineSync();
              int qtd = int.parse(entradaQtd!);
              valorTotal += qtd * 2.00;
              break;
            case 4:
              print("Digite a quantidade consumida !");
              String? entradaQtd = stdin.readLineSync();
              int qtd = int.parse(entradaQtd!);
              valorTotal += qtd * 1.50;
              break;
            default:
              print("Valor fora da faixa! o programa será encerrado.");
              exit(0);
          }
        } catch (e) {
          throw Exception('ERRO! $opEntrda não é um valor numérico');
        }
      } else {
        print("Valor nulo !");
      }
    } else {
      print("Valor nulo!");
      exit(0);
    }
    print("Digite [sim] para continuar e [nao] para sair !");
    String? entrada = stdin.readLineSync();
    resposta = entrada!;
  } while (resposta == 'sim');

  print("O valor total a ser pago é de ${valorTotal}\n");
}

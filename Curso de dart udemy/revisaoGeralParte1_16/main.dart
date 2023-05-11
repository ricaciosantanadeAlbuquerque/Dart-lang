/**
 * - Faça um programa que repita as seguintes tarefas, até que o número zero seja digitado:
a) Leia o código do produto.
b) Leia a quantidade adquirida.
c) Se o código for 1, escreva ‘Caderno – R$ 12.00’; Se for 2, escreva ‘Régua – R$ 2.50’; Se for 3, escreva ‘Borracha –
R$ 0.25’; Se for 4, escreva ‘Mochila – R$ 50.00’.
d) Calcule e exiba o total a ser pago (valor * quantidade)
 */
import 'dart:io';

void main() {
  int? op;
  double valorTotal = 0;
  do {
    print("Digite [1] caderno - R\$12.00");
    print("Digite [2] Regua - R\$ 2.50");
    print("Digite [3] Borracha - R\$0.25");
    print("Digite [4] Mochila 50.00");
    String? entrada = stdin.readLineSync();
    op = int.parse(entrada!); // ! diz para o compilador que o valor não é null, porém ele pode ser. Neste caso o uso é  para conhecer e praticar.

    switch (op) {
      case 1:
        print("Digite a quantidade ! ");
        String? qtdEntrada = stdin.readLineSync();
        if (qtdEntrada != null) {
          if (qtdEntrada.isNotEmpty == true) {
            try {
              int qtd = int.parse(qtdEntrada);
              // calculo
              valorTotal += qtd * 12.00;
            } catch (e) {
              throw Exception('ERRO! o valor $qtdEntrada não é um valor numérico');
            }
          } else {
            print("Digite um valor válido");
            exit(0);
          }
        } else {
          print("ERRO! valor nulo");
          exit(0);
        }
        break;
      case 2:
        print("Digite a quantidade ! ");
        String? qtdEntrada = stdin.readLineSync();
        if (qtdEntrada != null) {
          if (qtdEntrada.isNotEmpty == true) {
            try {
              int qtd = int.parse(qtdEntrada);
              // calculo
              valorTotal += qtd * 2.50;
            } catch (e) {
              throw Exception('ERRO! o valor $qtdEntrada não é um valor numérico');
            }
          } else {
            print("Digite um valor válido");
            exit(0);
          }
        } else {
          print("ERRO! valor nulo");
           exit(0);
        }
        break;
      case 3:
        print("Digite a quantidade ! ");
        String? qtdEntrada = stdin.readLineSync();
        if (qtdEntrada != null) {
          if (qtdEntrada.isNotEmpty == true) {
            try {
              int qtd = int.parse(qtdEntrada);
              // calculo
              valorTotal += qtd * 0.25;
            } catch (e) {
              throw Exception('ERRO! o valor $qtdEntrada não é um valor numérico');
            }
          } else {
            print("Digite um valor válido");
             exit(0);
          }
        } else {
          print("ERRO! valor nulo");
           exit(0);
        }
        break;
      case 4:
        print("Digite a quantidade ! ");
        String? qtdEntrada = stdin.readLineSync();
        if (qtdEntrada != null) {
          if (qtdEntrada.isNotEmpty == true) {
            try {
              int qtd = int.parse(qtdEntrada);
              // calculo
              valorTotal += qtd * 50.00;
            } catch (e) {
              throw Exception('ERRO! o valor $qtdEntrada não é um valor numérico');
            }
          } else {
            print("Digite um valor válido");
            exit(0);
          }
        } else {
          print("ERRO! valor nulo");
          exit(0);
        }
        break;
      default:
        print("Valor fora da faixa !!");
        break;
    }
  } while (op != 0);
  print("O valor total a ser pago é de ${valorTotal.toStringAsFixed(2)}");
}

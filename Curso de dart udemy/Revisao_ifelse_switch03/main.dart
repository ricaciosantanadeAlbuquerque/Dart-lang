/**
 * Uma empresa de pedidos pelo correio vende cinco produtos diferentes cujos preços de 
varejo são:
Produto 1, R$ 2,98
Produto 2, R$ 4,50
Produto 3, R$ 9,98
Produto 4, R$ 4,49
Produto 5, R$ 6,87
Escreva um aplicativo que leia uma série de pares de números como segue:
a) Número do produto;
b) Quantidade vendida em um dia.
O programa deve utilizar uma estrutura switch para ajudar a determinar o preço de varejo de 
cada produto. Ele deve calcular e exibir o valor total no varejo de todos os produtos 
vendidos na semana passada. Utilize um TextField para ler o número de produto digitado 
pelo usuário. Utilize um laço controlado por sentinela quando o programa deve parar de 
repetir o laço e exibir os resultados finais.
 */
import 'dart:io';

void main() {
  double valorTotla = 0;
  int numeroProduto = 0;
  print("============VAREJO=============");
  print("Digite o número do produto entre 1 e 5 !");
  print("Para encerrar digite 0");
  String? num1 = stdin.readLineSync();
  if (num1 != null) {
    numeroProduto = int.parse(num1);
    while (numeroProduto > 0) {
      switch (numeroProduto) {
        case 1:
          print(" Digite a quantidade ");
          String? entrada = stdin.readLineSync();
          if (entrada != null) {
            int qtd = int.parse(entrada);
            valorTotla += qtd * 2.98;
          }
          break;
        case 2:
          print(" Digite a quantidade ");
          String? entrada = stdin.readLineSync();
          if (entrada != null) {
            int qtd = int.parse(entrada);
            valorTotla += qtd * 4.50;
          }
          break;
        case 3:
          print(" Digite a quantidade ");
          String? entrada = stdin.readLineSync();
          if (entrada != null) {
            int qtd = int.parse(entrada);
            valorTotla += qtd * 9.98;
          }
          break;
        case 4:
          print(" Digite a quantidade ");
          String? entrada = stdin.readLineSync();
          if (entrada != null) {
            int qtd = int.parse(entrada);
            valorTotla += qtd * 4.49;
          }
          break;
        case 5:
          print(" Digite a quantidade ");
          String? entrada = stdin.readLineSync();
          if (entrada != null) {
            int qtd = int.parse(entrada);
            valorTotla += qtd * 6.87;
          }
          break;
        default:
          print("\nValor fora da faixa\n ");
      }
      print("Digite o número do produto !");
      String? num1 = stdin.readLineSync();
      numeroProduto = int.parse(num1!);
    }

    print("O valor Total dos produtos é ${valorTotla.toStringAsFixed(2)} ");
  }
}

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
  int numeroProduto = 1;

  while (numeroProduto != -1) {
    switch (numeroProduto) {

      case 1:
       print(" Digite a quantidade ");
       String? entrada = stdin.readLineSync();
       
        break;
      case 2:

        break;
      case 3:

        break;
      case 4:

        break;
      case 5:

        break;

    }
  }
}

/**
 * 15.13 Um armazém trabalha com 10 mercadorias diferentes identificadas pelos números inteiros de 0 a 9.
O dono do armazém anota a quantidade de cada mercadoria vendida durante o mês. Ele tem uma tabela
que indica para cada mercadoria o preço de venda. Escreva um algoritmo que leia a quantidade vendida
de cada produto no final do mês (armazenando-os em um vetor Q) e o preço de venda de cada um
(armazenado-os em um vetor P). Logo após calcular e escrever o faturamento mensal do armazém.
 */
import 'dart:io';

void main() {
  List<int> Q = [];
  List<double> P = [];
  double somaValor = 0;
  double contQtd = 0;

  for (var i = 0; i < 3; i++) {
    print(" Digite a quantidade do produto ");
    String? entrada = stdin.readLineSync();
    print("Digite o valor do produto !");
    String? entrada1 = stdin.readLineSync();

    if (entrada != null && entrada1 != null) {
      if (entrada.isNotEmpty && entrada1.isNotEmpty) {
        try {
          int qtd = int.parse(entrada);
          double valor = double.parse(entrada1);

          Q.add(qtd);
          P.add(valor);
        } catch (NumberFormetException) {
          print("Digite valores numéricos ");
        }
      } else {
        print("Digite valores válidos");
      }
    }
  }

  for (var i = 0; i < Q.length; i++) {
    contQtd += Q[i];
    somaValor += P[i] * Q[i]; // quantidade X valor unitário
  }

  print("A quantidade total de produtos vendidos foi de $contQtd, e o faturamento mensal do armazém é de $somaValor");
}

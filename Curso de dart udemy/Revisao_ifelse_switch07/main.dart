/**
 * A CEF concederá um crédito especial com juros de 2% aos seus clientes de acordo com
 o saldo médio no último ano. Fazer um algoritmo que leia o saldo
 médio de um cliente e calcule o valor do crédito de acordo com a tabela a seguir.
 Imprimir uma mensagem informando o saldo médio e o valor de crédito.

 */
import 'dart:io';

void main() {
  double porcento = 0;
  print(" 0 a 500  Nennhum crédito ! ");
  print("501 a 1000 30% de crédito ! ");
  print("1001 a 3000 40% de crédito ! ");
  print("Acima de 3001 50% de crédito !");

  print("Digite o saldo ! ");
  String? entrada = stdin.readLineSync();

  double saldo = double.parse(entrada!);

  if (saldo >= 501 && saldo <= 1000) {
    porcento = (saldo * 30) / 100;
  } else if (saldo >= 1001 && saldo <= 3000) {
    porcento = (saldo * 40) / 100;
  } else if (saldo > 3001) {
    porcento = (saldo * 50) / 100;
  }

  print("O saldo é $saldo e o crédito concedido é de $porcento");
}

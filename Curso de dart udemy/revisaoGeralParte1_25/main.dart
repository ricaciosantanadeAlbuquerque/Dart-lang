/**
 * . Faça um programa em que faça a conversão de Dólar para Real. Primeiro, defina uma constante chamada 
COTACAO com o valor de 3.18. Em seguida, leia o valor em dólares, multiplique pela cotação e exiba o 
resultado em reais. 
 */
import 'dart:io';

void main() {
  const cotacao = 3.18;
  print("Digite o valor em dolar !");
  String? valorEntrada = stdin.readLineSync();

  double dolar = double.parse(valorEntrada!);

  double real = dolar * cotacao;

  print("O valor de $dolar em reais é de $real");
  
}

/**
 * . Faça um programa que leia: o número de carros vendidos e o valor total das vendas do vendedor. Em 
seguida, calcule e exiba o salário final do vendedor sabendo que a empresa paga um salário fixo de R$ 
622,00, mais uma comissão de R$ 30,00 por cada carro vendido, mais 5% do valor total das vendas do 
vendedor
 */
import 'dart:io';

void main() {
  double salarioFinal = 0;
  double valorTentrada = 0;
  double acumulador = 0;
  print("Digite o numero de carros vendidos!");
  String? numeroEntrada = stdin.readLineSync();
  for (var i = 0; i < int.parse(numeroEntrada!); i++) {
    print("Digite o valor total da venda ");
    String? valor = stdin.readLineSync();
    valorTentrada = double.parse(valor!);
    acumulador += valorTentrada;
  }
  if (numeroEntrada != null && acumulador != null) {
    if (numeroEntrada.isNotEmpty == true && !acumulador.isNaN) {
      try {
        int numeroCarros = int.parse(numeroEntrada);
        double valorTotal = acumulador;
        print("Valor total das vendas $valorTotal ");
        double porcento = (valorTotal * 5) / 100;
        salarioFinal = 622.00 + (numeroCarros * 30.00) + porcento;
        print("O seu Salário é de ${622.00}R\$, comissão por cada carro ${numeroCarros * 30.00}R\$, + 5% do valor total das vendas ${porcento}R\$ ");
        print("Seu salário final é de $salarioFinal R\$");
      } catch (e) {
        throw Exception('ERRO! valor .$numeroEntrada ou $valorTentrada não é um número !');
      }
    } else {
      print("Valor vazio! o programa será encerrado.");
      exit(0);
    }
  } else {
    print("Valor nulo!");
    exit(0);
  }
}

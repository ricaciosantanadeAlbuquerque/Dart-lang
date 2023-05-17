/**
 * . Faça um programa que leia: o número de carros vendidos e o valor total das vendas do vendedor. Em 
seguida, calcule e exiba o salário final do vendedor sabendo que a empresa paga um salário fixo de R$ 
622,00, mais uma comissão de R$ 30,00 por cada carro vendido, mais 5% do valor total das vendas do 
vendedor
 */
import 'dart:io';

void main() {
  double salarioFinal = 0;

  print("Digite o numero de carros vendidos!");
  String? numeroEntrada = stdin.readLineSync();
  print("Digite o valor total da venda ");
  String? valorTentrada = stdin.readLineSync();

  if (numeroEntrada != null && valorTentrada != null) {
    if (numeroEntrada.isNotEmpty == true && valorTentrada.isNotEmpty == true) {
      try {
        int numeroCarros = int.parse(numeroEntrada);
        double valorTotal = double.parse(valorTentrada);
        double porcento = (valorTotal * 5) / 100;
        salarioFinal = 622.00 + (numeroCarros * 30.00) + porcento;
        print("O seu Salário é de ${622.00}R\$, comissão por cada carro ${numeroCarros * 30.00}R\$, + 5% do valor total das vendas ${porcento}R\$ ");
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

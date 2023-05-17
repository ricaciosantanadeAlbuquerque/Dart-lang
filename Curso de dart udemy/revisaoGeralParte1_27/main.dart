/**
 * . Escreve um programa para ler o salário bruto e o valor das horas extras trabalhadas. O programa deve exibir 
o salário líquido que deve ser obtido usando a fórmula:
salário liquido = salário bruto + valor das horas extras - 8% do salario bruto
 */
import 'dart:io';

void main() {
  print("Digite o valor de seu salário bruto !");
  String? salaEntrada = stdin.readLineSync();
  print("Digite o valor das horas extras !");
  String? horasEntrada = stdin.readLineSync();

  // conversao

  double salaBruto = double.parse(salaEntrada!);
  double horasExtras = double.parse(horasEntrada!);
  double porCento = (salaBruto * 8) / 100;
  //print(porCento);
  double salaLiquido = salaBruto + horasExtras - porCento;

  print("O seu salário liquido é de ${salaLiquido.toStringAsFixed(2)}");
}

/**
 * . Escrever um programa para ler o custo de fábrica de um carro, e exibir o custo final ao consumidor
     que é calculado como sendo: custo de fábrica + porcentagem do distribuidor + porcentagem
     dos impostos. Sabendo que o percentual do distribuidor é de 28% do custo de fábrica e os 
     impostos corresponde a 45% do custo de fábrica;
 */
import 'dart:io';

void main() {
  print("Digite o custo de fábrica de um carro !");
  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null) {
    if (entradaValor.isNotEmpty == true) {
      try {
        double valor = double.parse(entradaValor);
        double porCentoDistri = (valor * 28) / 100;
        //print(porCentoDistri);
        double porcentoImpost = (valor * 45) / 100;
        //print(porcentoImpost);
        double custoFinal = valor + porCentoDistri + porcentoImpost;
        print("\nO valor da fabrica $valor, porcentagem da distribuidora que é de 28% é $porCentoDistri, a porcentagem dos impostos que é de $porcentoImpost .");
        print("O valor final do produto é de $custoFinal\n");
      } catch (e) {
        throw Exception('ERRO! $entradaValor Não é um número,');
      }
    } else {
      print("ERRO! Vazio....");
    }
  } else {
    print("ERRO! valor nulo.");
  }
}

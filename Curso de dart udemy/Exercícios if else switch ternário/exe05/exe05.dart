/**
 * Tendo	 como	 entrada	 a	 altura	 e	 o	 sexo	 (codificado	 da	 seguinte	 forma:	
1:feminino	 	 2:masculino)	 de	 uma	 pessoa,	 construa	 um	 programa	 que	
calcule	e	imprima	seu	peso	ideal,	utilizando	as	seguintes	
Fórmulas:	
- para	homens:	(72.7	*	Altura)	– 58	
- para	mulheres:	(62.1	*	Altura)	– 44.7	
 */

import 'dart:io';

void main() {
  print("==============Menu============");
  print("Digite 1 para o Sexo Masculino");
  print("Digite 2 para o Sexo Feminino=");

  String? opcao = stdin.readLineSync();
  int op = int.parse(opcao!);

  switch (op) {
    case 1:
      print("Por favor digite sua altura !");
      String? altura = stdin.readLineSync();

      // conversão
      double alturaM = double.parse(altura!);

      double resultado = (72.7 * alturaM) - 58;

      print("Seu peso ideal é de $resultado");
      break;
    case 2:
      print("Digite sua altura por favor !");
      String? altura = stdin.readLineSync();
      double alturaF = double.parse(altura!);

      double resultado = (62.1 * alturaF) - 44.7;
      print("Seu peso ideal é de $resultado");
      break;

    default:
      print("Valor fora da faixa, O programa será encerrado ");
      exit(0);
  }
}

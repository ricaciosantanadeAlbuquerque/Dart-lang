/**
 * . Escreva um programa para calcular e exibir o comprimento de uma circunferência, sendo dado pelo usuário 
   o valor de seu raio. (C = 2πR).

 */
import 'dart:io';

void main() {
  print("Digite o raio !\n");
  String? entradaRaio = stdin.readLineSync();

  if (entradaRaio != null) {
    if (entradaRaio.isNotEmpty == true) {
      try {
        double raio = double.parse(entradaRaio);
        if (raio == 0) {
          print('\n ERRO! o valor $raio foi digitado !');
          print("Qualquer número multiplicado por 0 é igual a 0 \n");
        } else {
          double cumprimento = 2 * 3.14 * raio;
          print("O cumprimento é de ${cumprimento}\n");
        }
      } catch (e) {
        throw Exception('ERRO! o valor $entradaRaio não é numérico !!\n');
      }
    } else {
      print("ERRO! valor inválido, O programa será encerrado.\n");
      exit(0);
    }
  } else {
    print("Valor nulo !\n");
    print("O programa será encerrado !\n");
    exit(0);
  }
}

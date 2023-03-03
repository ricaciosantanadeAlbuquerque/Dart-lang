/**
 *  Faça um algoritmo que leia 20 números e armazene em um vetor. Depois, some os 10 
 *  primeiros elementos deste vetor;

 */
import 'dart:io';

void main() {
  int valorSoma = 0;
  List<int> lista = [];
  for (var i = 0; i < 20; i++) {
    print("Digite um numero ! ");
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada.isNotEmpty) {
        try {
          int numero = int.parse(entrada);
          lista.add(numero);
        } catch (NumberFormatException) {
          print("Digite valores numéricos ! ");
        }
      } else {
        print("Digite valores válidos !");
      }
    }
  }

  for (int i = 0; i < 10; i++) {
    valorSoma += lista[i];
  }

  print(" \n O valor da soma dos dez primeiros elementos são $valorSoma \n");
}

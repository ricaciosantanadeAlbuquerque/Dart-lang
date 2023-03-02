/**
 *  Número primo é aquele que só é divisível
 * por ele mesmo e pela unidade. Fazer um
 * algoritmo que determine e escreva os
 * números primos compreendidos entre um
*  intervalo fornecido pelo usuário.
 */
import 'dart:io';

void main() {
 
  print("Forneça o número de início ! ");
  String? entrada1 = stdin.readLineSync();
  print("Forneça o número de limite ! ");
  String? entrada2 = stdin.readLineSync();

  if (entrada1 != null && entrada2 != null) {
    if (entrada1.isNotEmpty && entrada2.isNotEmpty) {
      try {
        int inicio = int.parse(entrada1);
        int fim = int.parse(entrada2);

        for (var i = inicio; i <= fim; i++) {
           int cont = 0; // cont deve zerar  para não a cumular os valores dos loops anteriores
          for (var j = inicio; j <=i; j++) {
            if (i % j == 0) {
              cont = cont + 1;
            }
          }
          if (cont == 2) {
            print(i);
          }
        }
      } catch (NumberFormtException) {
        print("Digite apenas valores numericos ! ");
      }
      ;
    } else {
      print("Digite valores válidos !");
    }
  }
}

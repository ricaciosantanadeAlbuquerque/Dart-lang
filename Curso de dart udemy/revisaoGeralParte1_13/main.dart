/**
 * Faça um programa que fique recebendo números inteiros e contando quantos números foram iguais a 2. Caso 
   o usuário digite o número zero, o programa deverá parar de receber valores e exibir quantos números foram 
   iguais a 2
 */
import 'dart:io';

void main() {
  int contador = 0;
  int cont = 0;

  do {
    print("Por favor digite um número");
    String? entradaValor = stdin.readLineSync();

    if (entradaValor != null) {
      if (entradaValor.isNotEmpty) {
        try {
           contador = int.parse(entradaValor);
          
          if ( contador == 2) {
            cont++;
          }
        } catch (e) {
          throw Exception('ERRO! valor [$entradaValor] não é um número');
        }
      } else {
        print("ERRO! não foi digitado um valor !");
      }
    } else {
      print("ERRO! valor nulo. ");
    }
  } while (contador != 0 || contador > 0);
  print("A Quantidade de números iguais a 2 é $cont");
}

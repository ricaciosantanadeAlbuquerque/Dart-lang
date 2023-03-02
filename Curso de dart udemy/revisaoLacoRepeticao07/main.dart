/**
 * Implemente um algoritmo que leia um número e
 * uma opção de listagem. Com base nessa opção,
 * escreva a sequência dos números em ordem
 * crescente (de zero até o número) ou decrescente
 * (do número até zero).
 */
import 'dart:io';

void main() {
  print("Digite um numero !");
  String? entrada = stdin.readLineSync();
  print("Digite [1] para crescente ou [2] para decrescente ");
  String? opEntrada = stdin.readLineSync();

  if (entrada != null && opEntrada != null) {
    if (entrada.isNotEmpty && opEntrada.isNotEmpty) {
      try {
        num numero = num.parse(entrada);
        num opcao = num.parse(opEntrada);

        if(opcao >= 1 && opcao <= 2){

          if(opcao == 1){
            for(var i = 0; i <= numero;i++){
              print(" $i ");
            }
          }else{
            for(num j = numero; j >= 0; j--){

                print(" $j ");

            }
          }

        }else{
          print("ERRO! números fora do intervalo !! ");
        }
      } catch (NumberFormatException) {
        print("Digite apenas valores numéricos");
      }
    } else {
      print("Digite apenas valores válidos ");
    }
  }
}

/**
 * 1. Escreva um algoritmo em que leia um número e informe se ele é divisível por
10, por 5 ou por 2 ou se não é divisível por nenhum deles.

 */
import 'dart:io';

void main() {
  print(" Digite um número !");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        int numero = int.parse(entrada);

        if ((numero % 10 == 0)&&(numero % 5 == 0)&&(numero % 2 == 0)) {

          print("Ele é divisível por 10 por 5 e por 2 ");

        }else if (numero % 5 == 0){

          print(" Ele é divisível por 5 ");

        }else if( numero % 2 == 0 ){
          print("Ele é divisível por 2");
        }else if(numero % 10 == 0){

            print(" Ele é divisével por 10 ");

        }else{
          
          print("O número digitado não é divisível por 10 nem por 5 nem por 2 ");
          
        }
      } catch (NumberFormatException) {
        print(" Digite valores numéricos ");
      }
      ;
    } else {
      print(" Digite um valor válido.");
    }
  } else {
    print("Digite um valor por favor ! ");
  }
}

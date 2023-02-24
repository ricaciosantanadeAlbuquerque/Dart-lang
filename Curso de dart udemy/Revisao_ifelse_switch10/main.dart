/**
 * Construa um algoritmo em que determine (imprima) se um dado número N
inteiro (recebido através do teclado) é PAR ou ÍMPAR.
 */
import 'dart:io';

void main() {
  print(" Digite um numero por favor !");
  String? entrada = stdin.readLineSync();

  if(entrada != null){
    if(entrada.isNotEmpty){

      try{
        num numero = num.parse(entrada);

      if(numero % 2 == 0){
        print(" $numero é  Par ! ");
      }else{
        print("$numero é impar ! ");
      }

      }catch(NumberFormatException){

        print("Digite apenas valores numéricos ");

      }
      

    }else{
      print("Por favor digite um valor !");
    }
  }else{
    print("Por favor digite um valor !");
  }

}

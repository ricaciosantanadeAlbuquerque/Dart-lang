/**
 *  Escreva um programa em C que gera números entre 1000 e 1999 e mostra aqueles que 
 *  divididos por 11 dão resto 5.
 */
import 'dart:math';

void main(List<String> args) {
  Random p = new Random();
  for (int i = 0; i < 100; i++) {
    var valor = p.nextInt(1999 + 1);

  if(valor >= 1000 && valor <= 1999){
      
      if(valor %  11 == 5){
        print(" ${valor} ");
      }

  }

    
  }
}

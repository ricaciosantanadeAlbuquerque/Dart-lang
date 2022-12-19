/**
 * . Escreva	 um	 programa	 para	 ler	 3	 valores	 inteiros	 (considere	 que	 	 não	
     serão	lidos	valores	iguais)	e	escrevê-los	em	ordem	crescente
 */

import 'dart:io';

void main() {
  print("Digite o primairo valor inteiro ");
  String? primeiro = stdin.readLineSync();
  print("Digite o segundo valor ");
  String? segundo = stdin.readLineSync();
  print("Digite o terceiro valor ");
  String? terceiro = stdin.readLineSync();
  int num1 = int.parse(primeiro!);
  int num2 = int.parse(segundo!);
  int num3 = int.parse(terceiro!);
  // condição ===================================================================

  if (num1 > num2 && num1 > num3) {
    if(num2 > num3){
        print("\n");
      print(num1);
      print(num2);
      print(num3);
      print("\n");
    }else{
        print("\n");
      print(num1);
      print(num3);
      print(num2);
      print("\n");
    }
  } else if (num2 > num1 && num2 > num3) {
    if(num1 > num3){
          print("\n");
      print(num2);
      print(num1);
      print(num3);
      print("\n");
    }else{
          print("\n");
      print(num2);
      print(num3);
      print(num1);
      print("\n");
    }
  } else if (num3 > num2 && num3 > num1) {
     if(num2 > num1){
      print("\n");
      print(num3);
      print(num2);
      print(num1);
      print("\n");
     }else{
      print("\n");
      print(num3);
      print(num1);
      print(num2);
      print("\n");
     }
  } 
}

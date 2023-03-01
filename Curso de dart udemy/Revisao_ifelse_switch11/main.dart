/**
 * Ler três notas de um aluno, calcular a média 
 * e informar se ele foi aprovado (Média ≥ 7), 
 * reprovado (Média < 7) ou aprovado com 
 * louvor (Média = 10)

 */

import 'dart:io';

void main() {
  print("Digite sua primeira nota !");
  String? num1 = stdin.readLineSync();
  print("Digite sua segunda nota !");
  String? num2 = stdin.readLineSync();
  print("Digite sua terceura nota!");
  String? num3 = stdin.readLineSync();

  if (num1 != null && num2 != null && num3 != null) {
    if (num1.isNotEmpty && num2.isNotEmpty && num3.isNotEmpty) {
      try {
        double nota1 = double.parse(num1);
        double nota2 = double.parse(num2);
        double nota3 = double.parse(num3);

        if((nota1 >= 0 && nota1 <=10 )&& (nota2 >= 0 && nota2 <= 10)&&(nota3 >= 0 && nota3 <=10)){

          double media = (nota1 + nota2 + nota3)/3;

          if( media < 7){
            print("Reprovado !");
          }else if(media >= 7 && media < 10){
            print("Aprovado !");
          }else if(media == 10){
            print("Aprovado com louvor !");
          }

        }else{
          print("Valores fora da faixa !");
        }
      } catch (NumeberFormatException) {
        print("Digite apenas valores numericos");
      }
    }else{
      print("Digite apenas valores válidos");
    }
  }
}

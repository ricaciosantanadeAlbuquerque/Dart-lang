/** 1. Obtenha do usuário três notas de exame e calcule a média dessas notas. Reproduza a média
das três notas. Junto com a média mostre um :) no resultado se a média for maior ou igual 
a 60; caso contrário mostre :-(
Faça duas versões deste programa: */
import 'dart:io';

void main() {
  print("Por favor Digite sua primeira nota !");
  String? num1 = stdin.readLineSync();
  print("Por favor Digite sua segunda nota !");   // coleta dos dados.
  String? num2 = stdin.readLineSync();
  print("Por favor Digite sua terceira nota !");
  String? num3 = stdin.readLineSync();

  if (num1 != null && num2 != null && num3 != null) { // checamos para ver se era nulo.

    // fizemos a conversão 

    double nota1 = double.parse(num1);
    double nota2 = double.parse(num2);
    double nota3 = double.parse(num3);

    double media = (nota1 + nota2 + nota3) / 3; // fizemos o cálculo

    // e verificamos se estava aprovado ou não 

    if (media < 4) {
      print(" Você está REPROVADO! :-( ");
    } else if (media < 6.9) {
      print("Você está  em RECUPERAÇÃO !");
    } else {
      print("PARABÉNS você está APROVADO! (: ");
    }
  }
}

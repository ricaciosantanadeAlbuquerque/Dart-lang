/**
 *  Faça um programa que receba a idade de 10 pessoas e escreva a quantidade de pessoas com idades entre 0 
    e 12 anos.
 */
import 'dart:io';

void main() {
  int contadora = 0;
  for (var i = 0; i < 10; i++) {
    // 0 a 9
    print("Digite sua idade");
    String? idadeEntrada = stdin.readLineSync();

    if (idadeEntrada != null) {
      if (idadeEntrada.isNotEmpty == true) {
        try {
          int idade = int.parse(idadeEntrada);

          if (idade >= 0 && idade <= 12) {
            contadora++;
          }
        } catch (e) {
          throw Exception("ERRO! [$idadeEntrada] não é um valor númerico ):");
        }
      } else {
        print("Digite valores válidos !!");
      }
    } else {
      print("ERRO! valor nulo!!!");
    }
  }
  print("A quantidade de pessoas entre 0 e 12 anos é  de $contadora pessoas ");
}

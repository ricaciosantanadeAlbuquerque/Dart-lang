/**~
 * Criar um algoritmo em que leia o um número inteiro entre 1 e 7 e escreva o
dia da semana correspondente. Caso o usuário digite um número fora desse intervalo,
deverá aparecer uma mensagem informando que não existe dia da semana com esse
número.
 */
import 'dart:io';

void main() {
  print("Digite um numero entre 1 e 7 ");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        int dia = int.parse(entrada);
        if (dia >= 1 && dia <= 7) {
          switch (dia) {
            case 1:
              print("Domingo");
              break;
            case 2:
              print("Segunda");
              break;
            case 3:
              print("terça");
              break;
            case 4:
              print("quarta");
              break;
            case 5:
              print("quinta");
              break;
            case 6:
              print("sexta");
              break;
            case 7:
              print("Sábado");
              break;
            
          }
        } else {
          print("Valor fora da faixa!");
        }
      } catch (NumberFormatException) {
        print("Digite apenas valores numéricos !");
      }
    } else {
      print("Digite apenas valores válidos");
    }
  } else {
    print("Digite um valor ! ");
  }
}

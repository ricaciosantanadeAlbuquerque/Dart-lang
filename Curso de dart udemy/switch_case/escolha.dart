import 'dart:io';

void main(List<String> args) {
  print("Por favor  de 1 a 7 escolha um dia da semana passando o valor numerico \n");
  String? entrada = stdin.readLineSync(); // String? String do tipo nula null-Safety
  int entradaInt = int.parse(entrada!); // estou convertendo entrada que é String para int e informando que entrada não é nula !

  switch (entradaInt) {
    case 1:
      print("Domingo");
      break;
    case 2:
      print("Segunda-feira");
      break;
    case 3:
      print("Terça-feira");
      break;
    case 4:
      print("quarta-feira");
      break;
    case 5:
      print("quinta-feira");
      break;
    case 6:
      print("Sexta-feira");
      break;
    case 7:
      print("Sábado");
      break;
    default:
      print("O valor passado está fora da faixa ");
  }
}

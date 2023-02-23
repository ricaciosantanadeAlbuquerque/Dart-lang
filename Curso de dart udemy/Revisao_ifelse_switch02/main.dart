/**
 *  Solicite ao usuário para digitar um número, e mostre-o por extenso. Este número deverá 
variar entre 1 e 10. Se o usuário introduzir um número que não está neste intervalo, mostre a 
mensagem: “Número inválido”.
Faça duas versões deste programa:
 */
import 'dart:io';

void main() {
  print("Por favor digite um número entred 1 e 10. ");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        int numero = int.parse(entrada); // conversão

        if (numero >= 1 && numero <= 10) {
          // está na faixa

          switch (numero) {
            case 1:
              print("\n um  \n");
              break;
            case 2:
              print("\n dois \n");
              break;
            case 3:
              print("\ntrês\n");
              break;
            case 4:
              print("\nquarto\n");
              break;
            case 5:
              print("\ncinco\n");
              break;
            case 6:
              print("\nseis\n");
              break;
            case 7:
              print("\nsete\n");
              break;
            case 8:
              print("\noito\n");
              break;
            case 9:
              print("\nnove\n");
              break;
            case 10:
              print("\ndeze\n");
              break;
            default:
              print("\nNúmero inválido !\n");
          }
        }
      } catch (NumberFormatException) {
        print("Digite apenas valores numéricos");
      }
    }
  }
}

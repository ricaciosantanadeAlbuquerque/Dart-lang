/**
 * Determinar se um número é par ou ímpar e 
   positivo ou negativo

 */
import 'dart:io';

void main() {
  String opcao = "sim";
  int numero = 0;
  do {
    print("Digite um número por favor !");
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada.isNotEmpty) {
        try {
          numero = int.parse(entrada); // conversao

          if (numero % 2 == 0) {
            print("O número é par ! \n");
          } else {
            print("O número é impar !\n");
          }

          if (numero > 0) {
            print(" Positivo ! \n");
          } else {
            print(" Negativo ! \n");
          }
        } catch (NumeberFormatException) {
          print(" Digite apenas valores numericos \n");
        }
      } else {
        print("ERRO! entrada inválida !\n");
      }
    } else {
      print("Por favor digite um número\n");
    }
    print(" Você deseja continuar digite [sim] ou [nao] para sair.\n");
    String? opcaoEntrada = stdin.readLineSync();
    if (opcaoEntrada != null) {
      if (opcaoEntrada.isNotEmpty) {
        if (opcaoEntrada == "sim") {
          opcao = opcaoEntrada;
        } else if (opcaoEntrada == "nao") {
          opcao = opcaoEntrada;
        } else {
          print("ERRO! o programa será encerrado !\n");
          exit(0);
        }
      }
    }
  } while (opcao == "sim");
}

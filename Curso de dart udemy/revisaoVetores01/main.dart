/**
 * Ler dez elementos de um array unidimensional do tipo inteiro e apresentar os valores 
 * lidos;

 */
import 'dart:io';

void main() {
  List<int> arrayInt = [];

  for (int i = 0; i < 10; i++) {
    print("Digite um número !");
    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada.isNotEmpty) {
        try {
          int numero = int.parse(entrada);
          arrayInt.add(numero);
        } catch (NumberFormatException) {
          print("Digite apenas valores numéricos ");
        }
      }else{
        print("Digite valores válidos !");
      }
      }
    }
  

  for (var p in arrayInt) {
    print("$p");
  }
}

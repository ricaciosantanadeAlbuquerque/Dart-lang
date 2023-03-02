/**
 * mplemente um algoritmo que leia um número e
 * realize a soma dos números entre zero e o número
 * lido.
 */
import 'dart:io';

void main() {
  int somaAcumuladora = 0;
  print("Digite um valor numerico inteiro !");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        int numero = int.parse(entrada);

        for (int i = 0; i <= numero; i++) {
          somaAcumuladora += i;
          print(somaAcumuladora);
        }

        print("O valor total da soma é ${somaAcumuladora}");

      } catch (NumberFormtException) {
        print("Digite apenas valores numéricos ");
      }
    } else {
      print("Digite apenas valores validos !");
    }
  }
}

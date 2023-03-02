/**
 * Construa um programa que exiba a 
tabuada de 1 até N
 */
import "dart:io";

void main() {
  print("Digite um valor numérico ");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        num numero = num.parse(entrada);

        for (var i = 1; i <= numero; i++) {
          print(" $i X $numero == ${i * numero}");
        }
      } catch (NumberFormatException) {
        print("Digite apenas valores numéricos");
      }
    } else {
      print("Digite um valor válido !");
    }
  }
}

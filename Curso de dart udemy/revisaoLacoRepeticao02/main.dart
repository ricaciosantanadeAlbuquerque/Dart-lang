/**
 * Fazer um algoritmo que:
• Leia um número indeterminado de linhas 
contendo cada uma a idade de um indivíduo.
• A última linha que não entrará nos cálculos, 
contém o valor da idade igual a zero.
• Calcule e escreva a idade média deste grupo 
de indivíduos.
• Escreva também a maior idade e a menor
 */
import 'dart:io';

void main() {
  double media = 0;
  int idade = 0;
  int acumulador = 0;
  int maior = 0;
  int menor = 100000;
  int cont = 0;

  do {
    print("Por favor digie sua idade !");
    String? idadeEntrada = stdin.readLineSync();
    if (idadeEntrada != null) {
      if (idadeEntrada.isNotEmpty) {
        idade = int.parse(idadeEntrada);
        try {
          if (idade > 0) {
            acumulador += idade;
            cont++;

            if (idade > maior) {
              maior = idade;
            }

            if (idade < menor) {
              menor = idade;
            }
          }
        } catch (NumberFormatException) {
          print("Digite apenas valores numéricos !");
        }
      } else {
        print("Digite valores válidos !");
      }
    }
  } while (idade != 0);

  media = acumulador / cont;
  print("A média de idade deste grupo é ${media.toStringAsFixed(0)}");
  print("A maior idade é ${(maior == 0) ? 'NaN' : maior}");
  print("A menor idade é ${(menor == 100000) ? 'NaN' : menor}");
 
}

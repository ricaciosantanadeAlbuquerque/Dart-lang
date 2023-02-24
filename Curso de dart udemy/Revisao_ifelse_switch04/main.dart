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
  int idade = 0;
  int acumulador = 0;
  int contador = 0;

  do {
    
    print("Digite sua idade !");
    String? entradaIdade = stdin.readLineSync();
    if (entradaIdade != null) {
      idade = int.parse(entradaIdade);
       if(idade != 0){
        acumulador += idade;
        contador++;
       }
    }
  } while (idade != 0);
  int media = acumulador ~/ contador;
  print(" A das idades é  média $media");
}

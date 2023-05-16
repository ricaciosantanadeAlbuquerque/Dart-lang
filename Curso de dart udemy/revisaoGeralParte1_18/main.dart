/**
 *  Faça um programa que receba a idade e a altura de várias pessoas, calcule e mostre a média das alturas 
    daquelas com mais de 50 anos. Para encerrar a entrada de dados, digite uma idade que seja menor ou igual a 
    zero. Use a estrutura de repetição do ... while para resolver este problema
 */
import 'dart:io';

void main() {
  int idade = 1;
  int contador = 0;
  double acumulador = 0;

  while (idade != 0 || idade > 0) {
    print("Digite a sua idade por favor !");
    String? idadeEntrada = stdin.readLineSync();

    if (int.parse(idadeEntrada!) == 0) break;
    
    print("Digite a sua altura por favor !");
    String? alturaEntrada = stdin.readLineSync();
    // tratamento
    if (idadeEntrada != null && alturaEntrada != null) {
      if (idadeEntrada.isNotEmpty == true && alturaEntrada.isNotEmpty == true) {
        // conversao
        try {
          idade = int.parse(idadeEntrada.replaceAll(',','.'));
          double altura = double.parse(alturaEntrada.replaceAll(',','.'));

          if (idade >= 50) {
            acumulador += altura;
            contador++;
          }
        } catch (e) {
          throw Exception('ERRO! $idadeEntrada ou $alturaEntrada não são valores numéricos');
        }
      } else {
        print("Digite valores válidos.");
      }
    } else {
      print("Valor nulo ! O programa será encerrado. ");
      exit(0);
    }
  }
  double media = acumulador / contador;
  print("A Média da altura das pessoas com mais de 50 anos é ${media.toStringAsFixed(2)}");
}

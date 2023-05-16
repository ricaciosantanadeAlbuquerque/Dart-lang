/**
 * Faça um programa que repita as instruções abaixo (utilizando o do...while como estrutura mais externa e um 
 * for interno):
 * 1. Ler o sexo e a altura de 10 pessoas.
 * 2. Contar o número de homens e mulheres.
 * 3. O programa deverá executar 10 vezes.
 * 4. Após a execução do laço, o programa deverá escrever a altura da pessoa mais alta e a quantidade de homens 
 * e mulheres.
 */
import 'dart:io';

void main() {
  int contH = 0;
  int contM = 0;
  double maior = 0.0;

  for (var i = 0; i < 10; i++) { // 0 a 9

    print("Digite seu sexo por favor, [H] para homens ou [M] mulheres.");
    String? sexoEntrada = stdin.readLineSync();
    print("Digite sua altura por favor ! ");
    String? alturaEntrada = stdin.readLineSync();

    if (sexoEntrada != null && alturaEntrada != null) {
      if (sexoEntrada.isNotEmpty == true && alturaEntrada.isNotEmpty == true) {
       String sexo = sexoEntrada.toUpperCase();
        if (sexo == 'H' || sexo == 'M') {
          // conversão
          try {
            
            double altura = double.parse(alturaEntrada.replaceAll(',','.'));

            if (sexo == 'H') {
              contH++;
            } else if (sexo == 'M') {
              contM++;
            }

            if (maior < altura) {
              maior = altura;
            }
          } catch (e) {
            throw Exception('ERRO! $alturaEntrada não é um valor númerico');
          }
        } else {
          print("ERRO! sexo inegistente, o programa será encerrado.");
        }
      } else {
        print("ERRO! valores vazios. ");
        exit(0);
      }
    } else {
      print("ERRO! valores nulos.");
      exit(0);
    }
  }
  print("A quantidade de homens $contH ");
  print("A quantidade de mulheres $contM ");
  print("A maior altura é de ${maior.toStringAsFixed(2)} ");
}

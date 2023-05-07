import 'dart:io';

/**
 * Faça um programa que calcula a média de 3 notas de 10 alunos.
 */
void main() {
  print("===========CALCULO DA MÉDIA============");

  for (int j = 0; j < 10; j++) {
    // 0 a 9

    print("Digite a primeira nota !");
    String? nota1Entrada = stdin.readLineSync();
    print("Digite a segunda nota !");
    String? nota2Entrada = stdin.readLineSync();
    print("Digite sua terceira nota !");
    String? nota3Entrada = stdin.readLineSync();

    //  TRATAMENTO

    if (nota1Entrada != null && nota2Entrada != null && nota3Entrada != null) {
      if (nota1Entrada.isNotEmpty == true && nota2Entrada.isNotEmpty == true && nota3Entrada.isNotEmpty == true) {
        try {
          // conversão
          double nota1 = double.parse(nota1Entrada.replaceAll(',','.'));
          double nota2 = double.parse(nota2Entrada.replaceAll(',','.'));
          double nota3 = double.parse(nota3Entrada.replaceAll(',','.'));
          // calculo
          double media = (nota1 + nota2 + nota3) / 3;
          print("A média do aluno ${j + 1} é de $media "); //${} interpolação de String, $ referância a VARIÁVEL via coringa $
        } catch (NumberformatException) {
          throw Exception('Erro! valor $nota1Entrada ou $nota2Entrada ou $nota3Entrada não são númericos !');
        }
      } else {
         print("Digite valores válidos ");
      }
    } else {
      print("Digite valores válidos ");
    }
  }
}

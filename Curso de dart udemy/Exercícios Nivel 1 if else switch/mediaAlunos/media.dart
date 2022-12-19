/**
 * Faça um programa que calcula a média de 3 notas de 10 alunos.
 */
import 'dart:io';

void main() {
  for (int i = 0; i < 10; i++) {
    print("Digite seu nome! ");
    String? nome = stdin.readLineSync();
    print("Digite sua primeira nota ");
    String? nota1 = stdin.readLineSync();
    double nota1Double = double.parse(nota1!);
    print("Digite sua segunda nota ");
    String? nota2 = stdin.readLineSync();
    double nota2Double = double.parse(nota2!);
    print("Digite sua terceira nota !");
    String? nota3 = stdin.readLineSync();
    double nota3Double = double.parse(nota3!);

    // calculo =================================
    double media = (nota1Double + nota2Double + nota3Double) / 3;
    // Estrutura condicional aninhada: uma dentro da outra
    if (media >= 0 && media <= 10) { // tratamento do limite de valores possíveis para nota 
      if (media > 7) {
        print("O aluno $nome está aprovado com a média ${media}");
      } else if (media >= 5 && media < 7) {
        print("O Aluno $nome está em recuperação ${media}");
      } else {
        print("O Aluno $nome está Reprovado com média ${media}");
      }
    } else {
      print("Erro o valor está fora da Faixa, o programa será encerrado  ");
      exit(0);// programa encerrado 
    }
  }
}

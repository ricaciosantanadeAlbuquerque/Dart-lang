/**
 *  Ler as notas finais de uma turma de 10 alunos armazenando-as em um vetor N. A seguir calcule a
 * média aritmética das notas dos alunos aprovados (nota maior ou igual a 6). Armazene em um vetor P a
 * posição (índice) que cada aluno ocupa no vetor N, dos alunos que obtiveram nota maior que a média
 * calculada. Imprimir a média calculada e logo após o vetor P.
 * OBS: Não deixar valores em branco entre os elementos de P
 */
import 'dart:io';

void main() {
  List<String> nome = [];
  List<String> nomeAp = [];
  List<double> N = [];
  List<double> p = [];

  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 1; j++) {
      print("Digite o seu nome !");
      String? entradaNome = stdin.readLineSync();
      print("Digite sua primeira nota !");
      String? num1 = stdin.readLineSync();
      print("Digite sua segunda nota ! ");
      String? num2 = stdin.readLineSync();
      print("Digite sua terceira nota ! ");
      String? num3 = stdin.readLineSync();

      if (entradaNome != null && num1 != null && num2 != null && num3 != null) {
        if (entradaNome.isNotEmpty && num1.isNotEmpty && num2.isNotEmpty && num3.isNotEmpty) {
          nome.add(entradaNome);
          try {
            double nota1 = double.parse(num1);
            double nota2 = double.parse(num2);
            double nota3 = double.parse(num3);

            double soma = nota1 + nota2 + nota3;
            N.add(soma);
          } catch (NumberFormetException) {
            print("Digite apenas valores numericos ");
          }
        } else {
          print("Digite apenas valores válidos ! ");
        }
      }
    }
  }
  print(N);

  for (var notaF = 0; notaF < N.length; notaF++) {
    double media = N[notaF] / 3;

    if (media >= 6) {
      p.add(media);
      nomeAp.add(nome[notaF]);
    }
  }
  print(p);
  for (var i = 0; i < p.length; i++) {
    //0 a 2
    print("Parabéns Aluno(a) ${nomeAp[i]} você está aprovada! com a média ${p[i].truncate()}");
  }
}

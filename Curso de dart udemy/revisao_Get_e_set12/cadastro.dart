import 'Aluno.dart';

class Cadastro {
  List<Aluno> lista = [];

  void cadastrar({required String nome, required int idade, required double nota1, required double nota2, required double nota3, required nota4}) {
    Aluno aluno = Aluno(nome, idade, nota1, nota2, nota3, nota4);
    lista.add(aluno);
  }

  void listarAlunos() {
    for (var aluno in lista) {
      print(aluno.toString());
    }
  }

  void calcularMedia() {
    // todos os objtos alunos contidos dentro de lita terão seus atribultos notas somados e divididos pela quantidade e jogado para o atribulto media do objeto aluno (:) por fim  todos os alunos terão suas médias calculadas.
    for (var aluno in lista) {
      aluno.media = (aluno.nota1 + aluno.nota2 + aluno.nota3 + aluno.nota4) / 4;
    }

    listarAlunos(); // por fim fazemos uma nova listagem porém agora com os valores das médias preenchidas.
  }

  void maiorNota() {
    double maior = 0;
// como é possivel ver o objeto ?? atraves da lista de objeto aluno em seus respectivas posições
// quando ocorre o loop será testado o objeto na posição zero
    for (var aluno in lista) {
// se  maior  for menor que objeto aluno no atribulto nota1 então troca.
      if (maior < aluno.nota1) {
        maior = aluno.nota1;
      }
// se maior que contem o valor de nota1 ainda for menor que aluno.nota2 então troca e  assim por diante teremos a maior nota.
      if (maior < aluno.nota2) {
        maior = aluno.nota2;
      }

      if (maior < aluno.nota3) {
        maior = aluno.nota3;
      }
      if (maior < aluno.nota4) {
        maior = aluno.nota4;
      }
      print("A maior nota do aluno ${aluno.nome} é $maior");
    }
  }

  void menorNota() {
    double menor = 100;
    for (var aluno in lista) {
      if (aluno.nota1 < menor) {
        menor = aluno.nota1;
      }
      if (aluno.nota2 < menor) {
        menor = aluno.nota2;
      }

      if (aluno.nota3 < menor) {
        menor = aluno.nota3;
      }
      if (aluno.nota4 < menor) {
        menor = aluno.nota4;
      }
      print("A menor nota do aluno ${aluno.nome} é $menor");
    }
  }

  void coeficienteTurma() {
    double coeficiente = 0.0;  // variavel de escopo local

    for (var aluno in lista) {
      aluno.media = (aluno.nota1 + aluno.nota2 + aluno.nota3 + aluno.nota4) / 4;
      coeficiente += aluno.media!;
    }
    print("coeficiente de rendimento escolar é ${coeficiente}");
  }
}

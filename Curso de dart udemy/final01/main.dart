import 'Aluno.dart';

void main(List<String> args) {
  Aluno aluno1 = new Aluno("ricacio", 28, 109);
  print(aluno1.getIdade);
  aluno1.setIdade = 27;

  var aluno2 = Aluno.bolsista("Ana", 33, 77);
  print(aluno2.getMatricula);
  // aluno2.matricula = 123; // variáveis ou atribultos finais  não podem ter seu valor alterado

  print("${identical(aluno1, aluno2) ? "Sim são iguais " : "Não! não são iguais "}");
}

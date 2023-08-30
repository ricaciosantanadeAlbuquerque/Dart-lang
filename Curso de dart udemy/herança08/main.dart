import 'aluno.dart';
import 'funcionários.dart';
import 'pesssoa.dart';
import 'professor.dart';

void main() {
  Pessoa pessoa = new Pessoa();
  Aluno aluno = new Aluno();
  Professor professor = new Professor();
  Funcionario funcionario = new Funcionario();

  // teste de herança com os  objetos

  pessoa.nome = 'joão';
  aluno.nome = 'Maria';
  professor.nome = 'Matheus';
  funcionario.nome = 'Joana';
  /**
   *  Mesmo aluno, professor e funcionário não tendo em suas classes o atributo "nome", eles podem acessar o método set e get e o atributo nome. Isso porque eles herdam tudo da classe Pessoa.
   * 
   * 'QUANDO UMA CLASSE HERDA DE UMA CLASSE SUPERIOR, ELA HERDA TUDO!! MESMO QUE NÃO ESTEJA VISÍVEL ELA HERDA, E O QUE VAI DIZER SE ESTÁ VISIVEL OU NÃO SÃO OS MODIFICADORES DE VISIBILIDADE " PRIVATE PUBLIC PROTECTED"  
   */

  aluno.curso = 'Informática';
  professor.salario = 2750.70;
  funcionario.setor = 'finanças';

  // ============
  aluno.matricula = 123;
  aluno.idade = 18;
  aluno.fazerAniversario();
  aluno.cancelarMatricula();
  print(aluno.idade);
  // ===============

  professor.fazerAniversario();
  professor.receberAumento(1200);
  print(professor.salario);

  // =======================

  funcionario.trabalhando = true;
  funcionario.idade = 26;
  funcionario.sexo = 'feminino';

  print(funcionario.toString()); // esse toString() pertence a sua super classe Pessoa() por isso só  mostra a idade sexo e nome

  /**
   * reclação é um; todo funcionário é uma pessoa por isso herda tudo de pessoa
   */
}

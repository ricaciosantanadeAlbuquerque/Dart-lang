import 'aluno.dart';
//import 'pessoas.dart';
import 'aluno_bolsista.dart';
import 'aluno_tecnico.dart';
import 'professor.dart';
import 'visitante.dart';

void main() {
  // Pessoa pessoa = new Pessoa(nome: 'Rick',idade:22,sexo:'Masculino');  ERRO! classes abstratas não podem ser instânciadas

  Visitante visitante = Visitante(nome: 'Ana', idade: 36, sexo: 'Feminina');
  visitante.fazerAniversario();
  print(visitante..toString());

  print('=====================Test Aluno ========================');

  Aluno aluno = Aluno(07766, 'ADS');

  aluno
    ..fazerAniversario()
    ..pagarMensalidade();

  print(aluno.toString());

  print('=================== Test Professor ======================');

  Professor professor = Professor('Matemática', 4000, nome: 'João', idade: 26, sexo: 'Masculino'); // Linhas de instânciamento
  professor
    ..fazerAniversario()
    ..receberAumento();
  print('');
  print(professor.toString());
  print('');
  print('====================== test Aluno Bolsista =======================');
  print('');

  AlunoBolsista alunoBolsista = new AlunoBolsista('50%', matricula: 007, curso: 'Redes de computador', nome: 'Daniel', idade: 25, sexo: 'Masculino');

  alunoBolsista
    ..fazerAniversario()
    ..pagarMensalidade(); // será evocado o método sobreposto, caso não haja então será o proximo e assim por diante.
  // operador em cascata ..

  print(alunoBolsista.toString());

  print('');

  print('===================== teste Aluno Técnico ====================');

  AlunoTecnico alunoTec = AlunoTecnico('CVC', matricula: 72, curso: 'Sistemas para Internet', nome: 'Marta', idade: 36, sexo: 'Feminina');

  alunoTec
    ..fazerAniversario()
    ..pagarMensalidade()
    ..praticar();

  print('');

  print(alunoTec.toString());
}

import 'aluno.dart';
import 'bolsista.dart';
import 'pessoa.dart';
import 'professor.dart';
import 'tecnico.dart';
import 'visitante.dart';

void main() {
  // var pessoa = new Pessoa(); classes abstratas não podem ser instânciadas
  /**
  * Geralmente usamos essas classes como interfaces ou modelos.
  */

  var visitante = Visitante();
  var aluno = Aluno();
  var bolsista = Bolsista();
  var professor = Professor();
  var tecnico = Tecnico();

  aluno.nome = 'Lucas';
  aluno.idade = 22;
  aluno.matricula = 123;
  aluno.curso = 'informática';
  aluno.sexo = 'Masculino';

  aluno.fazerAniversario();
  aluno.pagarMensalidade();

  print(aluno.nome);
  print(aluno.idade);
  print(aluno.sexo);
  print(aluno.curso);
  print(aluno.matricula);

  print('============================================================================================================================');

  bolsista.bolsa = '50%';
  bolsista.curso = 'Analise de Sistemas';
  bolsista.matricula = 123467;
  bolsista.nome = 'Ana';
  bolsista.idade = 33;
  bolsista.sexo = 'feminina';

  bolsista.fazerAniversario();
  bolsista.pagarMensalidade();
  bolsista.renovarBolsa();

  print(bolsista.nome);
  print(bolsista.idade);
  print(bolsista.sexo);
  print(bolsista.curso);
  print(bolsista.matricula);

  /**
   *  Bolsista tem tudo que Aluno e pessoa tem .
   */

  // ============================================================================================================================
}

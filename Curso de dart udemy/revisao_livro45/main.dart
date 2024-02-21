import 'aluno.dart';
import 'bolsista.dart';
import 'professor.dart';
import 'visitante.dart';

void main() {
  var visitante = Visitante(nome: 'Ana', idade: 32, sexo: 'Feminina');
  Aluno aluno = Aluno(nome: 'ricacio', idade: 30, curso: 'ADS', sexo: 'Masculino', matricula: 0085); // linhas  de instânciamento;
  final bolsista = Bolsista(bolsa: 'Integral', matricula: 333, curso: 'ADS', nome: 'Matheus', idade: 23, sexo: 'Masculino');
  Professor professor = Professor(especialidade: 'Desenvolvimento para aplicativos móveis', salario: 9889, nome: 'Marina', idade: 28, sexo: 'Feminina');

  var texto = professor.toString();
  print(texto);

  professor
    ..salario = 12000
    ..receberAumento()
    ..fazerAniversario();

  print('');
  print('=======================================================');
  print('');

  print('Nome:${visitante.nome}, Idade: ${visitante.idade}, Sexo:${visitante.sexo}');
  print('');
  aluno
    ..fazerAniversario()
    ..pagarMensalidade()
    ..toString();

  // os atributos nome e idade assim como o método fazer aniversário são originários da  classe abstrata Pessoa. Porém aluno, Herda tudo por herança.
  print('');
  bolsista
    ..fazerAniversario()
    ..pagarMensalidade()
    ..renovarBolsa();

    /**
     * Bolsista herda de aluno, que por sua vez herda de pessoa.
     */
}

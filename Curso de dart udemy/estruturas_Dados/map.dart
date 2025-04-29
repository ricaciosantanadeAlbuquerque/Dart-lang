/**
 *  8️⃣ Iteração e Modificação em Map
Crie um Map<String,double> para armazenar nomes de alunos e suas notas.
Adicione pelo menos 5 alunos.
Filtre os alunos que tiraram nota maior que 7.
Atualize a nota de um aluno específico.
 * 
 * 
 */

void main() {
  Map<String, double> notasAlunos =
      Map<String, double>(); // linha de instânciamento
  notasAlunos['Ana'] = 7.0;
  notasAlunos['Lucas'] = 8;
  notasAlunos['ricacio'] = 8;
  notasAlunos['biza'] = 5.5;
  notasAlunos['dora'] = 4;

  // Filtre os alunos que tiraram nota maior que 7.
  notasAlunos.removeWhere((key, value) => value < 7);

  print('Alunos aprovados ${notasAlunos}');

  // Atualize a nota de um aluno específico.

  var result = notasAlunos.update('ricacio',(value) => 10, ifAbsent: () => 0.0);

  print('A nova nota $result');

  print('O novo mapa ${notasAlunos}');
}

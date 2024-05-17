import 'dart:collection';
import 'dart:io';

void main() {
  // criem uma coleção Queue e  preencha a mesma com notas inteiras de 4
  //alunos. Mostre a maior nota a menor nota  e a media das notas dos alunos
  // mais a media da sala;
// PS cada aluno deve ter 3 notas.

  ListQueue<int> mediaSala = ListQueue();
  Queue<String> nomeAluno = Queue();

  for (var i = 0; i < 4; i++) {
  ListQueue<int> notas = new ListQueue();
    print('Digite o nome  do aluno');
    String? entradaNome = stdin.readLineSync();
    nomeAluno.add(entradaNome!);
    for (var j = 0; j < 3; j++) {
      print('Digite a ${j + 1} nota !!');
      String? entradaNota = stdin.readLineSync();
      if (entradaNota != null && entradaNota.isNotEmpty) {
        try {
          int nota = int.parse(entradaNota);
          notas.add(nota);
        } catch (e) {
          throw Exception('ERRO! $entradaNota não pode ser convertida, pois não é um valor numerico');
        }
      } else {
        print('ERRO! valor nulo ou vazio, o programa será encerrado');
        exit(0);
      }
    }
    var menor = notas.reduce((anterior, atual) => (anterior < atual) ? anterior : atual);
    var maior = notas.reduce((anterior, atual) => (anterior > atual) ? anterior : atual);
    var media = notas.fold(0.0, (anterior, atual) => anterior + atual) / notas.length;
    print('A menor nota ${menor}, a maior nota ${maior}, a Média ${media}');
    mediaSala.addAll(notas);
  }

  print('Média da classe é ${mediaSala.reduce((anterior,atual) => anterior + atual)/ mediaSala.length}');
}

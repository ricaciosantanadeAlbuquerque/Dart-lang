import 'candidato.dart';

void main() {
  final candidato1 = Candidato('Ana', ideologia: 'Nao tem ', partido: 'Sem');

  candidato1
    ..objetivo = 'Ganhar as eleições'
    ..objetivosPessoais()
    ..postagem = 'vou acabar com a corrupção'
    ..escreverPostagem()
    ..ideologiaPolitica();
}

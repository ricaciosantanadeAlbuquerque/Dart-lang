import 'candidato.dart';

void main() {
  var candido = Candidato('JJ', partido: 'P', ideologia: 'Sem');
  candido
    ..objetivo = 'Ganhar as Eleições'
    ..objetivosPessoais()
    ..postagem = 'Acabar com a criminalidade'
    ..escreverPostagem()
    ..ideologiaPolitica();
}

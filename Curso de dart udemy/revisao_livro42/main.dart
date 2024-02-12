import 'candidato.dart';

void main() {
  var candidato = Candidato('JJ', ideologia: 'Sem', partido: 'O meu');

  candidato
    ..objetivo = 'Ganhar a eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção.'
    ..escreverPostagem()
    ..ideologiaPolitica();
}

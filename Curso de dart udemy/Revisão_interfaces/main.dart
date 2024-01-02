import 'candidato.dart';

void main() {
  var politico = Candidato(nome: 'Ana', ideologia: 'Social', partido: 'Centro');
  politico
    ..objetivo = 'Ganhar a eleição.\n'
    ..objetivosPessoais()
    ..postagem = 'Vou investir na segurança e Educação.\n'
    ..escreverPostagem()
    ..ideologiaPolitica();
}

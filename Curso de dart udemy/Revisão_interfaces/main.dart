import 'candidato.dart';

void main() {
  var politico = Candidato(nome: 'Ana');
  politico
    ..objetivo = 'Ganhar a eleição.\n'
    ..objetivosPessoais()
    ..postagem = 'Vou investir na segurança e Educação.\n'
    ..escreverPostagem();
}

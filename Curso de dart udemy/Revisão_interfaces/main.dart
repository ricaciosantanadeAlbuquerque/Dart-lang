import 'candidato.dart';

void main() {
  var politico = Candidato(nome: 'Ana');
  politico
    ..objetivo = 'Ganhar a eleição.'
    ..objetivosPessoais();
}

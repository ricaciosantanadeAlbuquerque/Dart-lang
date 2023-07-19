import 'candidato.dart';

void main() {
  // Cidadao novo = new Cidadao(nome: ''); classes abstratas  não podem ser instãnciadas

  Candidato novoCandidato = Candidato(nome: 'JJ', ideologia: 'centro', partido: 'CSS');

  novoCandidato
    ..objetivo = ' Ganhar eleição'
    ..objetivosPessoais()
    ..direitosDeveres()
    ..postagem = 'Aumentar o salário dos professores.'
    ..escrevendoPostagem()
    ..ideologiaPolitica();
  ;
}

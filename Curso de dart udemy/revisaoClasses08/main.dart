import 'jogador.dart';

void main() {
  Jogador jogador1 = Jogador();
  jogador1.id = 11;
  jogador1.nome = "Matheus";
  jogador1.apelido = "canhota";
  jogador1.numero = 7;
  jogador1.posicao = "Lateral";
  jogador1.qualidade = 100;
  jogador1.dataNascimento = DateTime(1992, 10, 21);
  jogador1.dados();
  if (jogador1.verificarCondicao() == true) {
    print("Está apto a jogar ! ");
  } else {
    print("Não pode jogar ");
  }
  print("==============================================================");
  Jogador jogador2 = Jogador();
  jogador2.id = 12;
  jogador2.apelido = "Perninha";
  jogador2.numero = 22;
  jogador2.posicao = 'atacante';
  jogador2.qualidade = 90;
  jogador2.dataNascimento = DateTime(2000, 03, 23);
  jogador2.dados();
  jogador2.cartoesVermelhos = 1;

  if (jogador2.verificarCondicao() == true) {
    print("Está apto a jogar ! ");
  } else {
    print("Não pode jogar ");
  }
}

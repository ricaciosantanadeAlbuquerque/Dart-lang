import 'cidadao.dart';
import 'postagem.dart';
import 'presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String nome, {this.partido, this.ideologia}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // interface Postagem

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook $postagem');
  }

  // interface Presidenciavel

  @override
  String? partido;
  String? ideologia;

  @override
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }
}

import 'cidadao.dart';
import 'postagem.dart';
import 'presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // Interface Postagem

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no Facebook $postagem');
  }

  // interface Presidenciavel
  @override
  String? partido;
  String? ideologia;

  @override
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia pelo partido $partido');
  }
}

import 'cidadao.dart';
import 'interface_postagem.dart';
import 'interface_presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome Tem o objetivo de $objetivo');
  }

  // interfaces Postagem

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
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

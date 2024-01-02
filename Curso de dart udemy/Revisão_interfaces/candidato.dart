import 'cidadao.dart';
import 'interface_postagem.dart';
import 'interface_presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato({String nome = 'indefinido', this.ideologia,this.partido}) : super(nome: nome);

  @override
  void objetivosPessoais() {
    print('$nome Tem o objetivo de $objetivo');
  }

  // interface concreta postagem
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem da $nome no facebook: $postagem');
  }

  //  interface  abstrata presidenciavel
  @override
  String? ideologia;
  String? partido;

  @override
  void ideologiaPolitica() {
    print('$nome é candidata com ideologia $ideologia pelo partido $partido');
  }
}

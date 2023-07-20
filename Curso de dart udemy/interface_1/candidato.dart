import 'cidadao.dart';
import 'postagem.dart';
import 'precidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato({required String nome, required this.ideologia, required this.partido}) : super(nome: nome) {
    direitosDeveres(); 
  }

  @override
  void objetivosPessoais() {
    print("$nome tem o objetivo de $objetivo");
  }

  //Interface ===================
  // Ao implementar uma interface devemos  sobrepor todos os métodos e atribultos  da interface.
  @override
  String? postagem;

  @override
  void escrevendoPostagem() {
    print('Postagem de $nome  no facebook $postagem');
  }

  // Interface2
  @override
  String? partido;
  String? ideologia;

  @override
  void ideologiaPolitica() {
    print('$nome é um candidato com ideologoa de  $ideologia pelo partido $partido');
  }
}

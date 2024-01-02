import 'cidadao.dart';
import 'interface_postagem.dart';

class Candidato extends Cidadao implements Postagem {
  String? objetivo;

  Candidato({String nome = 'indefinido'}) : super(nome: nome);

  @override
  void objetivosPessoais() {
    print('$nome Tem o objetivo de $objetivo');
  }

  // interface postagem
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem da $nome no facebook: $postagem');
  }
}

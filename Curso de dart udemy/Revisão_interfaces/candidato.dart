import 'cidadao.dart';

class Candidato extends Cidadao {
  String? objetivo;

  Candidato({String nome = 'indefinido'}) : super(nome: nome);

  @override
  void objetivosPessoais() {
    print('$nome Tem o objetivo de $objetivo');
  }
}

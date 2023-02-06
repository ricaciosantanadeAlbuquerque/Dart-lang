import 'Pessoa_fisica.dart';

class Funcionario extends PessoaFisica {
  String _cartao;

  Funcionario(this._cartao, String nome, String rg) : super(rg, nome);

  String get cartao => this._cartao;

  void set cartao(String cartao) => this._cartao = cartao;

  String toString() {

    return super.toString() + "\nCartao: $_cartao\n";

  }
}

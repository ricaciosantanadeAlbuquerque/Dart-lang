import 'pessoa.dart';

class PessoaFisica extends Pessoa {
  String _rg;

  PessoaFisica(this._rg, String nome) : super(nome);

  String get rg => this._rg;

  void set rg(String rg) => this._rg = rg;

  String toString() {
    return super.toString() + "RG: $_rg\n";
  }
}

import 'Pessoa_fisica.dart';
import 'pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj;

  PessoaJuridica(this._cnpj, String nome) : super(nome);

  String get cnpj => this._cnpj;

  void set cnpj(String cnpj) => this._cnpj = cnpj;

  String toString() => super.toString()+"CNPJ: $_cnpj";
}

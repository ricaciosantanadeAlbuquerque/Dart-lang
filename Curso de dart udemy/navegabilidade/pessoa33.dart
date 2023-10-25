import 'endereco33.dart';

class Pessoa33 {

  final String nome;
  final int idade;
  final double salario;
  Endereco33? _endereco33; // relação por associação

  Pessoa33({required this.nome, required this.idade, required this.salario, Endereco33? endereco33}) {
    this._endereco33 = endereco33;
  }

  Endereco33? get endereco33 => this._endereco33;

  void set endereco33(Endereco33? endereco33) {
    this._endereco33 = endereco33;
  }
  @override
  String toString() => 'Nome: $nome, Idade: $idade  Salário:$salario,';
}

import 'pessoa.dart';

class Professor extends Pessoa {
  String? _especialidade;
  double? _salario;

  String? get especialidade => this._especialidade;

  void set especialidade(String? especialidade) => this._especialidade = especialidade;

  double? get salario => this._salario;

  void set salario(double? salario) => this._salario = salario;

  void receberAumento(double? valor) {
    this.salario = this.salario! + valor!;
  }
}

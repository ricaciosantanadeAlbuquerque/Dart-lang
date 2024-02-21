import 'pessoa.dart';

class Professor extends Pessoa {
  String? _especialidade;
  double? _salario;

  Professor({required String especialidade, required double salario, required String nome, required int idade, required String sexo}) : super(nome: nome, idade: idade, sexo: sexo) {
    this.especialidade = especialidade;
    this.salario = salario;
  }

  String? get especialidade => this._especialidade;

  void set especialidade(String? especialidade) {
    this._especialidade = especialidade;
  }

  double? get salario => this._salario;

  void set salario(double? salario) {
    this._salario = salario;
  }

  void receberAumento() {
    print('O salário  reajustado ${(salario! + (salario! * 0.1))},');
  }
  @override
  String toString() => 'Professor $nome, salário atual $salario';
}

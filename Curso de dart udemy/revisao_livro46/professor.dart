import 'pessoas.dart';

class Professor extends Pessoa {
  String? _especialidade;
  double? _salario;

  Professor(this._especialidade, this._salario, {required String nome, required int idade, required String sexo}) : super(nome: nome, idade: idade, sexo: sexo);

  String? get especialidade => this._especialidade;

  void set especialidade(String? especialidade) => this._especialidade = especialidade;

  double? get salario => this._salario;

  void set salario(double? salario) => this._salario = salario;

  void receberAumento() {
    print('O salario do professor $nome é de $_salario');
    print('E foi reajustado em 20% e passa a ser de ${ this.salario = (_salario! + (_salario! * 0.20))}');
  }

 @override
  String toString() {
    return super.toString() + 'Especialidade:$_especialidade, Salario:$salario';
  }
}

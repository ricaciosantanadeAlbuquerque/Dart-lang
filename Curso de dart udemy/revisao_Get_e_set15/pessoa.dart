import 'dart:math';

class Pessoa {
  String _nome;
  int _idade;
  double _salario;
  double _cpf = 0.0;

  Pessoa(this._nome, this._idade, this._salario) {
    this._cpf = Random().nextInt(900).toDouble();
  }

  String get nome => this._nome;

  void set nome(String nome) {
    this._nome = nome;
  }

  int get idade => this._idade;

  void set idade(int idade) {
    this._idade = idade;
  }

  double get salario => this._salario;

  void set salario(double salario) {
    this._salario = salario;
  }

  String get cpf => "CPF:${this._cpf}";

  String get informacao => 'Nome:$_nome, Idade:$_idade, Salário:$_salario, cpf:$_cpf';
}

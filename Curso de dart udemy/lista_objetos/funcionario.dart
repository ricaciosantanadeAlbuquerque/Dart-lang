class Funcionario {
  late String _nome;
  late double _salario;

  Funcionario(String nome, double salario) {
    this.nome = nome;
    this.salario = salario;
  }

  String get nome => this._nome;

  void set nome(String nome) => this._nome = nome;

  double get salario => this._salario;

  void set salario(double salario) => this._salario = salario;

  void alterarDados({required String nome, required double salario}) {
    if (nome.isNotEmpty && salario >= 0) {
      this.nome = nome;
      this.salario = salario;
      print('Valores alterados para $_nome e $_salario');
    } else {
      print('ERRRO!!!!!!!!!!!!!!!!!!!!!!!!');
    }
  }

  @override
  String toString() => 'Nome:$_nome, Salário:$_salario';
}

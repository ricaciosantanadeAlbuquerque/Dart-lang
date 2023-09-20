abstract class Funcionarios {
  String? _nome;
  double? _salario;

  Funcionarios(this._nome, this._salario);

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  double? get salario => this._salario;

  void set salario(double? salario) => this._salario = salario;

  void addAumento(double valor) {
    this.salario = this.salario! + valor;
  }

  void ganhoAnual() {
    print("Ganho Anual ${this.salario! * 12}");
  }

  void exibirDados() {
    print("Nome: $_nome");
    print("Salário $_salario");
  }
}

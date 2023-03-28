import 'dart:math';

class Pessoas {
  String? nome;
  int? idade;
  int? telefone;
  String? endereco;
  int numeroId = new Random().nextInt(100 + 1);
  double salario = 0;
  String? tipoTrabalho;

  void infor() {
    print("Nome: ${this.nome ?? 'não informado'}, idade: ${this.idade ?? 'não infromado'}");
    print("Telefone: ${this.telefone ?? 'não informado'}, Endereço ${this.endereco ?? 'não informado'}");
    print("Numero de Identificação: ${this.numeroId}");
    print("Salário: ${this.salario}");
  }

  double consultarSalario() => this.salario;

  void modificarSalario(double salario) {
    this.salario = salario;
  }

  void trabalhar() {
    print("$nome está trabahando ");
  }

  void alterarCadastro({String? nome, int? telefone, String? endereco}) {
    this.nome = nome ?? 'Não informado';
    this.telefone = telefone ?? this.telefone;
    this.endereco = endereco ?? this.endereco;
  }
}

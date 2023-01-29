class Funcionario {
  String? nome;
  String? sobrenome;
  int? horasTrabalhadas;
  double? valorPorhora;

  void nomeCompleto() => (this.nome != null && this.sobrenome != null) ? print(nome! + " " + sobrenome!) : print("Os valores não foram passados ! ");

  void calcularSalario() {
    if (this.horasTrabalhadas != null && this.valorPorhora != null) {
      var resultado = (4 * (7 * (horasTrabalhadas! * valorPorhora!))); // os parenteses mais internos executam primeiro
      print(" O valor de seu salario é  $resultado");
    }
  }

  void incrementarHoras(int horas) {
    this.horasTrabalhadas = this.horasTrabalhadas! + horas;

    print(this.horasTrabalhadas);
  }
}

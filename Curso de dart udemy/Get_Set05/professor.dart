class Professor {
  // Atribulto =================================
  final String _nome;
  final int _matricula;
  double? _salario;
  bool _concursado = false;

// construtor padrão ============================

  Professor(this._nome, this._matricula);
// construtor nomeado ===========================
  Professor.concursado(this._nome, this._matricula, this._concursado);

// get set p ====================================

  String get nome => this._nome;

  int get matricula => this._matricula;

  double get salario => this._salario ?? 0;

  void set salario(double salario) => this._salario = salario;

  bool get concursado => this._concursado;

  void set concursado(bool concursado) => this._concursado = concursado;

// funcao =============================

  void salarioP() {
    if (this._concursado == true) {
      this._salario = 17000;
      print("Salário: $_salario, e estabilidade");
    } else {
      this._salario = 7000;
      print("Salário: $_salario, e sem estabilidade ");
    }
  }

  void darAula() {
    print("Dando Aula !");
  }

  String get infromacao => "Nome: $_nome Matricula: $_matricula Salário: $_salario Concursado: $_concursado ";
}

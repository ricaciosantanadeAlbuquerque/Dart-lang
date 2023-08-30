class Funcionario {
  String? _setor;
  bool? _trabalhando;

  String? get setor => this._setor;

  void set setor(String? setor) {
    this._setor = setor;
  }

  bool? get trabalhando => this._trabalhando;

  void set trabalhando(bool? trabalhando) {
    this._trabalhando = trabalhando;
  }
}

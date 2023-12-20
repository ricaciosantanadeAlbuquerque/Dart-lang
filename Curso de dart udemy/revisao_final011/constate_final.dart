class Pessoa {
  String? nome;
  final dynamic familiares;

  Pessoa(this.nome, this.familiares);

  void adicionar(String a) {
    familiares.add(a);
  }
}

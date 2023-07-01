// classe encapsulada
class PessoaGet {
  static final PessoaGet _instancia = new PessoaGet._nomeado();
  String? _nome;

  PessoaGet._nomeado();

  static PessoaGet get instancia => _instancia;

  String? get nome => _nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  void anda() {
    print("Andando!");
  }
}

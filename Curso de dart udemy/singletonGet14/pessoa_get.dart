class PessoaGet {
  String? _nome;
  static final PessoaGet _instancia = PessoaGet._nomeado();

  PessoaGet._nomeado();

  // atribultos static devem ser utilizados dentro de métodos static

  static PessoaGet get instancia => _instancia;

  String? get nome => this._nome;
  void set nome(String? nome) {
    this._nome = (nome != null) ? nome : 'indefinido';
  }
}

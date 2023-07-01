class PessoaFactory {
  static final PessoaFactory _instancia = new PessoaFactory._construtorNomeado();
  String? _nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado();

  static PessoaFactory get instancia => _instancia;

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }
}

class PessoaGet {
  static final PessoaGet _instancia = PessoaGet._construtorNomeado();
  String? _nome;

  PessoaGet._construtorNomeado();

  static PessoaGet get instancia {
    return _instancia;
  }

  get nome => this._nome;
}

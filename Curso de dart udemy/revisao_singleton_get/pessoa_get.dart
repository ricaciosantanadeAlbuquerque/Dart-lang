class PessoaGet {

  static final PessoaGet _instancia = PessoaGet._construtorNomeado();
  String? _nome;

  PessoaGet._construtorNomeado();

  static PessoaGet get instancia {
    return _instancia;
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }
  
}

class PessoaFactory {
  static final PessoaFactory instancia = PessoaFactory._construtorNomeado();
  String? nome;

  factory PessoaFactory() => instancia; // o construtor factory sempre será executado primeiro!

  PessoaFactory._construtorNomeado();

}

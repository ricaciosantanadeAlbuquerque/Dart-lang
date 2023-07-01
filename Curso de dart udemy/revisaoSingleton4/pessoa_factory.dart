class PessoaFactory {
  static PessoaFactory? instancia;
  String? nome;

  factory PessoaFactory() => instancia ??= new PessoaFactory._construtorNomeado();

  PessoaFactory._construtorNomeado();
}

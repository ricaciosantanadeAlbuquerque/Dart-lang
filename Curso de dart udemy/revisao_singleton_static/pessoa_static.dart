class PessoaStatic {
  static final PessoaStatic instance = new PessoaStatic._construtorNomeado();
  String? nome;

  PessoaStatic._construtorNomeado();

  void texto() => print('$nome, você está acessando um método de instância da classe');
}
/**
 * static: torna o atribulto visível a classe.
 * final : cria uma  constante em  tempo de execução, não podendo ser alterada.
 */
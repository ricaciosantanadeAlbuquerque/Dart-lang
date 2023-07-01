class PessoaFactory {
  static PessoaFactory? instancia;
  String? nome;

  factory PessoaFactory() => instancia ??= new PessoaFactory._construtorNomeado();

  PessoaFactory._construtorNomeado();
}

/**
 * Se instância for null, então será criado um objeto e atribuido a instância, que por sua vez será retornada eeeee não terá mais seu * valor sobreposto ou alterado já que instancia não é mais null.
 */
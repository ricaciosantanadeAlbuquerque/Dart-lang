//
class PessoaFactory {
  // Não é possível  criar uma nova instância da classe, já que o atribulto, é final.
  static final PessoaFactory _instancia = PessoaFactory._nomeado("Lucas"); // singleton
  String _nome;

  factory PessoaFactory() => _instancia; // O construtor factory Sempre executa primeiro, O construtor factory pode retornar instâncias originais ou atribultos da classe.

  PessoaFactory._nomeado(this._nome); // construtor nomeado e privado. Não acessível fora da classe

  String get nome {
    return this._nome;
  }

  void set nome(String nome) {
    this._nome = nome;
  }

  static PessoaFactory get instancia {
    return _instancia;
  }
}

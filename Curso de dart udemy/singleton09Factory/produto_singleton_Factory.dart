class ProdutoFactory {
  static final ProdutoFactory instancia = ProdutoFactory._nomeado("notebook");
  String _nomeProduto; // atribulto de instância.

  factory ProdutoFactory() => instancia; // o construtor factory, é sempre o primeiro a ser executado. e irá retornar o nosso objeto singleton

  // construtor Nomeado privado
  ProdutoFactory._nomeado(this._nomeProduto);

  // get and set 

  String get nomeProduto {
    return this._nomeProduto;
  }

  void set nomeProduto(String nomeProduto) {
    this._nomeProduto = nomeProduto;
  }
}

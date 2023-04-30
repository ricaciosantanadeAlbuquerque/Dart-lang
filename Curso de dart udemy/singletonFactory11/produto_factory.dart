class ProdutoFactory {
  static final ProdutoFactory _instancia = ProdutoFactory._nomeado('Indefinido');
  String nomeProduto;

  factory ProdutoFactory() => _instancia;

  ProdutoFactory._nomeado(this.nomeProduto);

  static ProdutoFactory get instancia {
    return _instancia;
  }

}

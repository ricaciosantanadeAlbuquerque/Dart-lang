class ProdutoGet {
  
  static final ProdutoGet _instacia = ProdutoGet._nomeado();
  String? nomeProduto;

  ProdutoGet._nomeado();

  // Atribultos  ou variáveis static só podem ser manuseados dentro de métodos static

  static ProdutoGet get instancia {
    return _instacia;
  }
}

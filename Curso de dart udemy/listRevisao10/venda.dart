class Venda{
  String? produto;
  double? preco;

  Venda({required this.produto,required this.preco});

  String toString() => 'Produto:$produto, Preço:$preco ';
}
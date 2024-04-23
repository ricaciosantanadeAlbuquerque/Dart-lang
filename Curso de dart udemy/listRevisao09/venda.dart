class Venda{
  String? produto;
  double? preco;

  Venda({required this.produto,required this.preco});

  @override
  String toString() => 'Produto:$produto, preço:$preco';
}
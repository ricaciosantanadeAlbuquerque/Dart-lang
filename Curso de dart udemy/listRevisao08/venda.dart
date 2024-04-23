class Venda{
  String? produto;
  double? preco;

  Venda(this.produto,this.preco);

  @override
  String toString() => 'Nome:$produto, Preco:$preco';
}
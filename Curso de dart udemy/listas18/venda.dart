class Venda {
  String? produto;
  double? preco;

  Venda({required String produto, required double preco}) {
    this.produto = produto;
    this.preco = preco;
  }

  @override
  String toString() => '$produto, $preco';
}

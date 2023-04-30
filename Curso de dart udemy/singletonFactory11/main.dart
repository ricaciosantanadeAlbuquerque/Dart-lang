import 'produto_factory.dart';

void main() {
  ProdutoFactory produto = ProdutoFactory();
  print(produto.nomeProduto);
  produto.nomeProduto = "Casa";

  ProdutoFactory produto2 = ProdutoFactory();
  print(produto2.nomeProduto);

  print(identical(produto, produto2));
}

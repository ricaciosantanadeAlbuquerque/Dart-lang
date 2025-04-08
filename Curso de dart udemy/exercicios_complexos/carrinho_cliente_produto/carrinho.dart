import 'produto.dart';

class Carrinho {
  List<Produto> listProduto = [];

  Carrinho();

  void adicionarProduto(Produto item) {
    listProduto.add(item);
  }

  void removerProduto(Produto item) {
    listProduto.remove(item);
  }

  num totalValorListaProdutos() {
    return listProduto.isNotEmpty
        ? listProduto.fold(0.0, (start, produto) {
            return start += double.tryParse(produto.preco) ?? 0.0;
          })
        : 0.0;
  }

  void listarProdutos() {
    listProduto.forEach(print);
  }
}

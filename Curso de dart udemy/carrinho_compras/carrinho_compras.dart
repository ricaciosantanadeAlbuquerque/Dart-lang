import 'produto.dart';

class CarrinhoCompras {
  List<Produto> itemCarrinho = [];
  double valorTotalProduto = 0;

  CarrinhoCompras();

  void adicionarProduto(Produto item) {
    itemCarrinho.add(item);
  }

  void removerProduto(Produto item) {
    itemCarrinho.remove(item);
  }

  void listarProdutos() {
    itemCarrinho.forEach((value) {
      print(value.toString());
    });
  }

  double calcularValorTotal() {
    return itemCarrinho.fold(0.0, (start,atual){
       return start += atual.preco!;
    });
  }
}

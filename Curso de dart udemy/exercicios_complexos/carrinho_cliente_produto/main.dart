import 'carrinho.dart';
import 'produto.dart';

void main() {
  Carrinho carrinho01 = Carrinho();
  var bola = Produto(nome: 'Bola', preco: '50', quantidade: '2');
  var moto = Produto(nome: 'Moto', preco: '31000', quantidade: '1');
  var casa = Produto(nome: 'Apartamento', preco: '81000', quantidade: '1');

  carrinho01
    ..adicionarProduto(bola)
    ..adicionarProduto(moto)
    ..adicionarProduto(casa)
    ..listarProdutos();
  print('');
  print('O valor total da compra é de ${carrinho01.totalValorListaProdutos()}');

  print('');

  print('================ Removendo valores =================');
  carrinho01
    ..removerProduto(casa)
    ..listarProdutos();

  print('O valor total da compra é de ${carrinho01.totalValorListaProdutos()}');
}

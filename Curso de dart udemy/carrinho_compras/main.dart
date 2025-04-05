import 'carrinho_compras.dart';
import 'produto.dart';

/**
 * Crie uma classe Produto com nome, preço e quantidade.
Depois, crie um Carrinho que:

Permita adicionar e remover produtos

Calcule o total da compra
 */

void main() {
  CarrinhoCompras carrinhoCompras = new CarrinhoCompras();
  Produto bike = new Produto(nome: 'Bike', preco: 1200, quantidade: 1);
  Produto carro = new Produto(nome: 'Apartamento', preco: 86000, quantidade: 1);
  Produto moto = new Produto(nome: 'Moto', preco: 31000, quantidade: 1);
  Produto notebook = new Produto(nome: 'NoteBook', preco: 4200, quantidade: 1);

  carrinhoCompras
    ..adicionarProduto(bike)
    ..adicionarProduto(carro)
    ..adicionarProduto(moto)
    ..adicionarProduto(carro)
    ..adicionarProduto(notebook);

  carrinhoCompras
    ..listarProdutos()
    ..removerProduto(notebook)
    ..listarProdutos();
  print('');
  print(
      'Valor total dos produtos no carrinho de compras ${carrinhoCompras.calcularValorTotal()}');

  carrinhoCompras
      .adicionarProduto(Produto(nome: 'TV', preco: 2500, quantidade: 2));

  print('Valor total ${carrinhoCompras.calcularValorTotal()}');
}

//import '../listas20/main.dart';
import 'pessoa.dart';
import 'venda.dart';
import 'vendedor.dart';

void main(List<String> args) {
  // teste1(); // chamada a função
  teste2();
}

void teste1() {
  Pessoa p1 = Pessoa(nome: 'Lucas', sobrenome: 'Lins', identidade: 75088974409);
  Pessoa p2 = Pessoa(nome: 'Ana', sobrenome: 'Santana');

  List<Pessoa> listPessoa = [p1, p2];

  // adicionando elementos na lista

  listPessoa.add(Pessoa(nome: 'ricacio', sobrenome: 'Santana', identidade: 10855566475));

  // iterando com for

  for (var i = 0; i < listPessoa.length; i++) {
    print('${listPessoa[i].nome}, ${listPessoa[i].sobrenome}, ${listPessoa[i].identidade}');
  }

  // iteração com for in
  print('');

  for (var pessoa in listPessoa) {
    print('${pessoa.nome} ${pessoa.sobrenome}, ${pessoa.identidade}');
  }

  print('');

  // iteração com forEach()

  listPessoa.forEach((e) => print('${e.nome}, ${e.sobrenome}, ${e.identidade}'));
}

void teste2() {
  List<Vendedor> listVendedor = [];
  // adicionando vendedores
  // add 1
  listVendedor.add(
    Vendedor(nome: 'Lucas', listVenda: [Venda(produto: 'Camisa', preco: 150.00), Venda(produto: 'Celular', preco: 2200), Venda(produto: 'Bike', preco: 1800)]),
  );
  // add 2
  listVendedor.add(Vendedor(nome: 'Ricacio', listVenda: [Venda(produto: 'Carro', preco: 35000), Venda(produto: 'computador', preco: 4500), Venda(produto: 'Celular', preco: 5500)]));

  // add 3
  listVendedor.add(Vendedor(nome: 'Carmem', listVenda: [Venda(produto: 'tv', preco: 1500), Venda(produto: 'bike', preco: 2500), Venda(produto: 'Bola', preco: 75.00)]));

  print(listVendedor.toString());

  listVendedor.sort((b, a) => a.listVenda!.fold(0.0, (anterior, atual) => (anterior + atual.preco!)).compareTo(b.listVenda!.fold(0, (anterior, atual) => anterior + atual.preco!)));

  listVendedor.forEach((e) => print('Nome:${e.nome}, qtdVendas:${e.listVenda!.length}, valo total:${e.listVenda!.fold(0.0, (anterior, atual) => anterior + atual.preco!)}, Vendas:${e.listVenda!.map((e) => e.preco).toList()}'));
}

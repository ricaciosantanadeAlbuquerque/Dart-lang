import 'pessoa.dart';
import 'venda.dart';
import 'vendedor.dart';

void main(List<String> args) {
  Pessoa p1 = Pessoa('Ana', 'Lins', identidade: 75087754409);
  Pessoa p2 = Pessoa('Lucas', 'Santana', identidade: 77788899905);

  List<Pessoa> listPessoa = [p1, p2];

  listPessoa.add(Pessoa('Moises', 'Lins'));

  // iteração for

  for (var i = 0; i < listPessoa.length; i++) {
    print('For: ${listPessoa[i].nome} ${listPessoa[i].sobrenome} ${listPessoa[i].identidade}');
  }

  // iteração for in
  print('');

  for (var pessoa in listPessoa) {
    print('for in:${pessoa.nome}, ${pessoa.sobrenome}, ${pessoa.identidade}');
  }

  print('');

  // iteração  com forEach()

  listPessoa.forEach((element) {
    print('ForEach(): ${element.nome}, ${element.sobrenome}, ${element.identidade}');
  });

  // ===========================================Vendedor=======================================

  List<Vendedor> listVendedor = [
    Vendedor(nome: 'João', listVenda: [Venda(produto: 'Cama', preco: 2500.00), Venda(produto: 'camisa', preco: 150.00), Venda(produto: 'Notebook', preco: 4500.00)]),
    Vendedor(nome: 'Ana', listVenda: [Venda(produto: 'Celular', preco: 2200.00), Venda(produto: 'Mesa', preco: 2500.00), Venda(produto: 'Carregador', preco: 180.00)]),
    Vendedor(nome: 'Lucas', listVenda: [Venda(produto: 'Sapato', preco: 150.00), Venda(produto: 'folgão', preco: 450.00), Venda(produto: 'Camisa', preco: 155.00)])
  ];

  listVendedor.forEach((element) {
    print('Nome:${element.nome}, QTD:${element.listVenda.length}, Vendas:${element.listVenda}');
  });

  listVendedor.sort((b, a) => a.listVenda.fold(0, (num anteriot, atual) => anteriot + atual.preco!).compareTo(b.listVenda.fold(0, (anterior, atual) => anterior + atual.preco!)));
  print('');
  print(listVendedor);
  print('');
  listVendedor.forEach((element) =>
      print('vendedor:${element.nome}  ${listVendedor.length} vendas \t totalizando ${element.listVenda.fold(0, (num anterior, atual) => anterior + atual.preco!)}, vendas: ${element.listVenda.map((element) => element.preco).toList()}'));
}

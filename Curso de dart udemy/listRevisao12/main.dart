import 'pessoa.dart';
import 'venda.dart';
import 'vendedor.dart';

void  main(){

  List<Pessoa> listPessoa = [];

  listPessoa.add(Pessoa(nome: 'Ricacio', sobreNome: 'Santana'));
  listPessoa.add(Pessoa(nome: 'Lucas', sobreNome: 'Santana',identidade: 77788855564),);
  listPessoa.add(Pessoa(nome: 'Ana', sobreNome: 'guimarães'));

  for(var j = 0; j < listPessoa.length;j++){
    print('Nome:${listPessoa[j].nome}, sobreNome:${listPessoa[j].sobreNome}, identidade:${listPessoa[j].identidade}');
  }

  print('');

  for(var item in listPessoa){
    print('Nome:${item.nome}, sobreNome:${item.sobreNome}, identidade:${item.identidade}');
  }
  
  print('');

  listPessoa.forEach((element) => print('Nome:${element.nome}, sobreNome:${element.sobreNome}, identidade:${element.identidade}'));

  testCode();
}



void testCode(){
  print('');
  List<Vendedor> listVendedor = [];

  listVendedor.add(Vendedor(nome: 'Ana', listVenda: [Venda(produto: 'Camisa', preco:  100),Venda(produto: 'Relógio', preco: 250)]));
  listVendedor.add(Vendedor(nome: 'Lucas', listVenda: [Venda(produto: 'Computador', preco: 1800),Venda(produto: 'Caneta', preco: 1.50)]));

  // ordenando a lista  de vendedores pelo total de vendas.

  listVendedor.sort((b,a) => a.listVenda!.fold(0.0,(anterior,atual) => anterior + atual.preco!).compareTo(b.listVenda!.fold(0.0,(anterior,atual) => anterior + atual.preco!)));

  // ordenando a lista de vendas em ordem decrescente

  listVendedor.forEach((e) => e.listVenda!.sort((b,a) => a.preco!.compareTo(b.preco!)));

  listVendedor.forEach((e){
     print('nome:${e.nome}, \t ${e.listVenda!.length} vendasQTD,\t Totalizando:${e.listVenda!.fold(0.0,(anterior,atual) => anterior + atual.preco!)}, \t vendas:${e.listVenda!.map((e) => e.preco).toList()}');
  });
}
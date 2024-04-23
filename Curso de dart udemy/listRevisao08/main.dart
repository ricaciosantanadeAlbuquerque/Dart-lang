
import 'venda.dart';
import 'vendedor.dart';

void main(){
  List<Vendedor> listVendedor = [];
  listVendedor.add(Vendedor(nome: 'Lucas', listVenda: [Venda('Camisa', 150 ),Venda('Tênis' , 350),Venda('Celular',2200)]));
  listVendedor.add(Vendedor(nome: 'Ana', listVenda: [Venda('TV', 3500),Venda('Geladeira',4500),Venda('folgão',850)]));
  listVendedor.add(Vendedor(nome: '', listVenda: [Venda('Celular',3600),Venda('Moto',28000),Venda('Notebook', 4500)]));

  // ordenando pelo total de vendas feitas. 
  
  listVendedor.sort((b,a) => a.listVenda.fold(0.0,(anterior,atual) =>  
  anterior + atual.preco!).compareTo(b.listVenda.fold(0,(anterior,atual) => anterior + atual.preco!)));
  // ordenando pelas vendas.
  listVendedor.forEach((e) => e.listVenda.sort((b,a) => a.preco!.compareTo(b.preco!)));

  // mostrando  os valores pelas vendas

  listVendedor.forEach((e) => print('Nome:${e.nome},\t ${e.listVenda.length} QTDVendas \t Totalizando: ${e.listVenda.fold(0.0,(anterior,atual) => anterior + atual.preco!)},' 
  +
  '\t Vendas: ${e.listVenda.map((e) => e.preco).toList()}'));
}
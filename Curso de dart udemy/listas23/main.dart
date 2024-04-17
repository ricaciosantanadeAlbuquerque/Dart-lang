import 'Vendedor.dart';
import 'venda.dart';

void main(){
 List<Vendedor> listVendedor = [];
 listVendedor.add(Vendedor(nome: 'Ana', litsVenda: [Venda(produto: 'camisa', preco: 100),Venda(produto: 'Celular', preco: 1780),Venda(produto:'notebook',preco:4200)]));
 listVendedor.add(Vendedor(nome: 'Lucas', litsVenda: [Venda(produto:'bike',preco:1500),Venda(produto:'moto',preco:28000),Venda(produto: 'tv', preco: 2400)]));
 listVendedor.add(Vendedor(nome: 'Ricacio', litsVenda: [Venda(produto: 'teclado de computador', preco: 89),Venda(produto: 'cordão de prata', preco: 350),Venda(produto: 'folgão', preco: 750)]));

 // ordenando elemento pelo total de vendas

 listVendedor.sort((b,a) => a.litsVenda!.fold(0,(anterior,atual) =>(anterior + atual.preco!).toInt()).compareTo(b.litsVenda!.fold(0,(anterior,atual) =>(anterior + atual.preco!).toInt())));
// print(listVendedor);
listVendedor.forEach((e) => e.litsVenda!.sort((b,a) => a.preco!.compareTo(b.preco!)));
 listVendedor.forEach((e){
  print('Nome:${e.nome}, ${e.litsVenda!.length} vendas, total Vendas:${e.litsVenda!.fold(0,(anterior,atual)=>(anterior + atual.preco!).toInt())}, vendas:${e.litsVenda!.map((e) => e.preco).toList()}');
 });
}
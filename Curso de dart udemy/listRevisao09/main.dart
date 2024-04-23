
import 'Vendedor.dart';
import 'pessoa.dart';
import 'venda.dart';

void main(){
  Pessoa p1 = Pessoa(nome: 'Lucas', sobreNome: 'Santana',identidade: 77588969708);
  Pessoa p2 = Pessoa(nome: 'Ricacio', sobreNome: 'Santana',identidade: 55544465809);

  // Lista de objetos pessoa

  List<Pessoa> listPessoa = [p1,p2];
  listPessoa.add(Pessoa(nome: 'Ana',sobreNome:'Lins'));

  // 1 for
  print('');
  for(var i = 0; i < listPessoa.length;i++){
    print('Nome:${listPessoa[i].nome}, sobreNome:${listPessoa[i].sobreNome}, identidade:${listPessoa[i].identidade}');
  }

  // 2 for in
 print('');
  for(var pessoa in listPessoa){
    print('Nome:${pessoa.nome} sobreNome:${pessoa.sobreNome}, identidade:${pessoa.identidade}');
  }

  // 3 forEach()
  print('');
  listPessoa.forEach((e) => print('Nome:${e.nome}, sobreNome:${e.sobreNome}, identidade:${e.identidade}'));

  // ============================================== Vendedor ===========================================

  List<Vendedor> listVendedor = [];

  listVendedor.add(Vendedor(nome: 'Lucas', listVenda: [Venda(produto: 'Celular', preco: 3500),Venda(produto: 'Tv', preco:4500)]));
  listVendedor.add(Vendedor(nome: 'Ana', listVenda: [Venda(produto: 'NoteBook', preco: 4500),Venda(produto: 'Bike', preco: 1500),
  Venda(produto: 'Moto', preco: 28000)]));

  // ordenando pelo total de vendas de cada vendedor

  listVendedor.sort((b,a) => a.listVenda!.fold(0.0,(anterior,atual) => anterior + atual.preco!).compareTo(b.listVenda!.fold(0.0,(anterior,atual) => anterior + atual.preco!)));
  // ordenando pelas vendas em decrescente.
  listVendedor.forEach((e) => e.listVenda!.sort((b,a) => a.preco!.compareTo(b.preco!) ));
   print('');
   print('=======================================================');
  listVendedor.forEach((e) => print('Nome:${e.nome}, \t ${e.listVenda!.length} QTDvendas \t, TotalizandoVendas:${e.listVenda!.fold(0.0,(anterior,atual) => anterior + atual.preco!)}\t, Vendas:${e.listVenda!.map((e) => e.preco).toList()}'));
}
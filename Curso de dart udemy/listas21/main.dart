import 'pessoa.dart';
import 'venda.dart';
import 'vendedor.dart';

void main(List<String> args){
  Pessoa p1  = Pessoa(nome: 'Ana',sobreNome: 'Lins',identidade:7455586509);
  var p2 = Pessoa(nome: 'Lucas', sobreNome: 'Santana');

  List<Pessoa> listPessoa = [p1,p2];
  listPessoa.add(Pessoa(nome:'Ricacio',sobreNome:'Santana'));

  for(var i = 0; i < listPessoa.length;i++){
    print('Nome:${listPessoa[i].nome}, sobrenome:${listPessoa[i].sobreNome}, identidade:${listPessoa[i].identidade}');
  }

  print('');

  for(var pessoa in listPessoa){
    print('Nome:${pessoa.nome}, Sobrenome:${pessoa.sobreNome}, identidade:${pessoa.identidade}');
  }

  print('');

  listPessoa.forEach((e) => print('Nome:${e.nome}, Sobrenome:${e.sobreNome}, identidade:${e.identidade}'));


  // liste vendedor ==========================================================================================
  
  List<Vendedor> listVendedor = [];

  listVendedor.add(Vendedor(nome:'Ricacio',listVenda: [Venda(produto:'Camisa',preco:150),Venda(produto:'Celular',preco:2200),Venda(produto:'T~enis',preco:250)]));
  listVendedor.add(Vendedor(nome: 'Lucas', listVenda: [Venda(produto: 'Bike',preco:1500),Venda(produto:'Computador',preco:4200),Venda(produto:'moto',preco:28000)]));
  listVendedor.add(Vendedor(nome:'Biza',listVenda:[Venda(produto:'notebook',preco:5000,),Venda(produto:'impressora',preco:850),Venda(produto:'Carregador',preco:280)]));
  // ordenando pela soma do total
 print('\n');
listVendedor.sort((b,a) => a.listVenda!.fold(0,(anterior,atual) => (anterior + atual.preco!).toInt()).compareTo(b.listVenda!.fold(0,(anterior,atual) => (anterior + atual.preco!).toInt())));
  
  print('\n');
  print('\n');
  print('\n');
  listVendedor.forEach((e) => print('Nome:${e.nome},\t ${e.listVenda!.length} Vendas, \t totalizando${e.listVenda!.fold(0,(anterior,atual)=> (anterior + atual.preco!).toInt())}, \t Vendas:${e.listVenda!.map((e) => e.preco).toList()}'));


}
import 'pessoa.dart';
import 'venda.dart';
import 'vendedor.dart';

void main(){
//  call Function chamada a função
  test();
}

void test(){
  Pessoa pessoa1 = Pessoa(nome: 'Lucas', sobreNome:'Santana',identidade: 755886446);
  Pessoa pessoa2 = Pessoa(nome: 'Ana', sobreNome: 'Lins');
  List<Pessoa> listPessoa = [pessoa1,pessoa2];

  // adicionando um objeto pessoa

  listPessoa.add(Pessoa(nome: 'Ricacio', sobreNome: 'Satana'));

  // iteração for

  for(var i = 0; i < listPessoa.length;i++){
    print('Nome:${listPessoa[i].nome}, sobreNome:${listPessoa[i].sobreNome}, identidade:${listPessoa[i].identidade}');
  }
 
 print('');
 // for in
 for(var pessoa in listPessoa){
   print('Nome:${pessoa.nome}, sobreNome:${pessoa.sobreNome}, identidade:${pessoa.identidade}');
 }

 print('');

 // forEach()

  listPessoa.forEach((e) => print('nome:${e.nome}, sobreNome:${e.sobreNome}, identidade:${e.identidade}'));
 
}

void test1(){
  print('');
  List<Vendedor> listVendedor = [];

  // adicionando 3 objetos

  listVendedor.add(Vendedor(nome: 'Ana', listVenda: [Venda(produto:'Camisa',preco: 150),Venda(produto: 'Tênis', preco: 250),Venda(produto: 'Celular', preco: 3200)]));
  listVendedor.add(Vendedor(nome: 'joão', listVenda: [Venda(produto: 'Carro', preco: 50000),Venda(produto: 'notebook', preco: 4500),Venda(produto: 'Moto', preco: 35000),]));
  listVendedor.add(Vendedor(nome: 'Ricacio', listVenda: [Venda(produto: 'celular', preco: 2500),Venda(produto: 'impressora', preco: 850),Venda(produto: 'TV50', preco: 5000)]));

 // ordenando a lista vendedor pelo maior valor de venda;

  listVendedor.sort((b,a) => a.listVenda!.fold(0.0,(anterior,atual) => anterior + atual.preco!).compareTo(b.listVenda!.fold(0.0,(anterior,atual)=> anterior + atual.preco!)));

// ordenando a lista de vendas

listVendedor.forEach((e) => e.listVenda!.sort((b,a) => b.preco!.compareTo(a.preco!))); 

// mostrando  valores

listVendedor.forEach((e) => print('nome:${e.nome}, ${e.listVenda!.length} vendasQTD, totalizando:${e.listVenda!.fold(0.0,(anterior,atual)=> anterior + atual.preco!)}, Vendas:${e.listVenda!.map((e) => e.preco).toList()}'));

}

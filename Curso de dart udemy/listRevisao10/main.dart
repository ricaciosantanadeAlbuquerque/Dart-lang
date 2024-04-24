import 'pessoa.dart';

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

}
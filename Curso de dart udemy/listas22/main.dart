import 'pessoa.dart';

void main(List<String> args){
  Pessoa p1 = Pessoa(nome:'Ricacio',sobreNome: 'Santana');
  Pessoa p2 = Pessoa(nome:'Ana',sobreNome:'Lins',identidade: 74565488);

  List<Pessoa> listPessoa = [p1,p2];
  listPessoa.add(Pessoa(nome: 'Carmem', sobreNome:'Lins'));

  for(var i = 0; i < listPessoa.length;i++){
    print('Nome:${listPessoa[i].nome}, sobrenome:${listPessoa[i].sobreNome}, identidade:${listPessoa[i].identidade}');
  }

  print('');

  for(var pessoa in listPessoa){
    print('Nome:${pessoa.nome}, sobrenome:${pessoa.sobreNome}, identidade:${pessoa.identidade}');
  }

  print('');

  listPessoa.forEach((e) => print('Nome:${e.nome}, sobrenome:${e.sobreNome}, identidade:${e.identidade}'));
}

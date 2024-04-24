import 'pessoa.dart';

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
}
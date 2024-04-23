import 'pessoa.dart';

void main(List<String> args){
  // instanciando a  classe Pessoa
  Pessoa pessoa1 = new Pessoa('Ana','Silva',identidade: 78588865409);
  Pessoa pessoa2 = Pessoa('Ricacio', 'Santana',identidade:10244455509);

  List<Pessoa> listPessoa = [pessoa1,pessoa2];

  // adicionando objeto Pessoa

  listPessoa.add(Pessoa('Lucas','Santana',));

  // lista com  for

  for(var j = 0; j < listPessoa.length;j++){
    print('Nome:${listPessoa[j].nome}, sobreNome:${listPessoa[j].sobreNome}, identidade:${listPessoa[j].identidade}');
  }

  print('\n');

  // listando com for in

  for(var pessoa in listPessoa){
    print('Nome:${pessoa.nome}, sobreNome:${pessoa.sobreNome}, identidade:${pessoa.identidade}');
  }

  // listando com forEach()

  print('');
  
  listPessoa.forEach((e) => print('Nome:${e.nome}, sobreNome:${e.sobreNome}, identidade:${e.identidade}'));
}
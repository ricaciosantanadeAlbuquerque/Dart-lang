import 'pessoa_get.dart';

void main(List<String> args) {
  PessoaGet.instancia.nome = 'JJ';

  //print(PessoaGet._instancia); ATRIBUTO PRIVADO

  print(PessoaGet.instancia.nome);

  var p1 = PessoaGet.instancia;

  var p2 = PessoaGet.instancia;

  print(p1.nome);
  print('');
  print(p2.nome);

  p1.nome = 'Vitória';

  print(p2.nome);

  print(identical(p1,p2));
}

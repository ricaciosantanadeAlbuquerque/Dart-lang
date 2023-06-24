import 'pessoa_static.dart';

void main() {
  var obj1 = PessoaStatic.instancia;
  PessoaStatic.instancia.nome = 'Ricacio';
  print(PessoaStatic.instancia.nome);
  var obj2 = PessoaStatic.instancia;
  print(PessoaStatic.instancia.nome);

  print(identical(obj1, obj2)); // mesmo Objeto
}

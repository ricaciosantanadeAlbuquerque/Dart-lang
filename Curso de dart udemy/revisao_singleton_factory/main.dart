import 'singleton_factory.dart';

void singletonFactory() {
  PessoaFactory.instancia.nome = 'Ana';

  var p1 = PessoaFactory();

  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = 'Lucas';

  print('');
  print(PessoaFactory.instancia.nome);

  print(identical(p1,p2));
}

void main() {
  singletonFactory();
}

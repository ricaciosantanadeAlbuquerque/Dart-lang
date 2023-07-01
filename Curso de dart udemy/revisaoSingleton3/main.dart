import 'pessoa_factory.dart';

void main() {
  var obj1 = PessoaFactory();
  obj1.nome = 'Ana';
  print(obj1.nome);

  var obj2 = PessoaFactory();
  print(obj2.nome);

  print(identical(obj1, obj2));
}

/**
 * A finalidade do padrão singleton, é retornar sempre o mesmo objeto ou a mesma instância.
 */
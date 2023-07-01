import 'pessoa_factory.dart';

void main() {
  var p1 = PessoaFactory();
  p1.nome = 'Ana';
  var p2 = PessoaFactory();

  print(identical(p1, p2));
  print(PessoaFactory.instancia!.nome);
}

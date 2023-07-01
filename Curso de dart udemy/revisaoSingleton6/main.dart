import 'pessoa_instancia.dart';

void main() {
  var p1 = new PessoaInstancia();
  p1.nome = "Dora";

  var p2 = new PessoaInstancia();

  print(p2.nome);
  print(p1 == p2);
  print(identical(p1, p2));
}

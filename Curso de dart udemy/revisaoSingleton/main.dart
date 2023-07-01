import 'pessoa_static.dart';

void main() {
  var objeto1 = PessoaStatic.instancia;
  var objeto2 = PessoaStatic.instancia;

  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Ricacio';
  print(PessoaStatic.instancia.nome);
  print(identical(objeto1, objeto2));
  print(identical(objeto1, PessoaStatic.instancia));
  print(objeto2 == PessoaStatic.instancia);
}

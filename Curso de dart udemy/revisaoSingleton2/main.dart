import 'pessoa_get.dart';

void main() {
  PessoaGet.instancia.nome = 'Ana';

  var objeto1 = PessoaGet.instancia;
  print(objeto1.nome);

  PessoaGet.instancia.anda();

  var objeto2 = PessoaGet.instancia;

  print(identical(objeto1, objeto2));
  print(objeto2.nome);
}

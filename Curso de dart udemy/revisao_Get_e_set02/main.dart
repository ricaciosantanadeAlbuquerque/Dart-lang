import 'Pessoa.dart';

void main() {
  var pessoa = Pessoa('Ana', 'Rua 224', '111.876.607-09', 36);
  print(pessoa.getInformacao);
  pessoa.setEndereco = 'Rua madalena 237';
  print(pessoa.getEndereco);
  print('');
  print(pessoa.getInformacao);
  // A classe pessoa está encapsulada, não é possível acessar diretamente seus atribultos.
}

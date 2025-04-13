import 'pessoa.dart';

void main() {
  Pessoa pessoa1 = new Pessoa(nome: 'Ricacio', idade: '29');
  var pessoa2 = Pessoa(nome: 'Ana', idade: '35', cidade: 'João Pessoa');

  print(pessoa1.toString());
  print(pessoa2);
}

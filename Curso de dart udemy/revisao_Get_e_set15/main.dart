import 'pessoa.dart';

void main() {
  Pessoa pessoa1 = new Pessoa('Ana', 32, 1650.00);
  pessoa1
    ..nome = 'lucas'
    ..idade = 27;
  print(pessoa1.informacao);

  pessoa1.salario = 2000;
  print(pessoa1.salario);

  var pessoa2 = Pessoa('João ', 22, 1697);
  pessoa2.idade = 21;
  pessoa2
    ..idade = 23
    ..nome = 'abrão'
    ..salario = 3500;

  print(identical(pessoa1, pessoa2));
}

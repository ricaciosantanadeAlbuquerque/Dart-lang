import 'pessoa.dart';

void main() {
  Pessoa pessoa1 = new Pessoa(); // linhas de instanciamento

// O objeto pessoa1 tem acesso a seus atributos, e pode inicializar os mesmo  com  valores.

  pessoa1.nome = 'lucas';
  pessoa1.idade = '28';

  //print('Nome: ${pessoa1.nome}, Idade: ${pessoa1.idade}\n');

  pessoa1.info();

  var pessoa2 = Pessoa();

  pessoa2.nome = 'Ana';
  pessoa2.idade = '37';

  //print("Nome: ${pessoa2.nome}, Idade: ${pessoa2.idade}\n");

  pessoa2.info();
  /**
   * 
   */
}

import 'pessoa.dart';

void main() {
  var pessoa1 = new Pessoa('Ana', 32, altura: 1.75);

  print("\nNome:${pessoa1.nome}, Idade:${pessoa1.idade}, Altura: ${pessoa1.altura}\n");

  var pessoa2 = Pessoa('Lucas', 28, cor: 'Branca');

  print("Nome:${pessoa2.nome}, Idade:${pessoa2.idade}, Altura:${pessoa2.idade}");
  
}

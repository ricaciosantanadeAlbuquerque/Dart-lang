import 'pessoa.dart';

void main() {
  Pessoa3 pessoa = Pessoa3("Ana", 36, cor: "preta,");

  print("Nome ${pessoa.nome} cor: ${pessoa.cor} idade: ${pessoa.idade} Altura: ${pessoa.altura}");
  print("====================================================================================");
  Pessoa3 pessoa1 = new Pessoa3("Lucas", 26, altura: 1.80);
  print("Nome ${pessoa1.nome} cor: ${pessoa1.cor} idade: ${pessoa1.idade} Altura: ${pessoa1.altura}");
}

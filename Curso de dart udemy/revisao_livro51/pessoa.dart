abstract class Pessoa {
  final String nome;
  final int idade;
  final String sexo;

  const Pessoa(this.nome, this.idade, this.sexo);

  @override
  String toString() => 'Nome:$nome, Idade: $idade, Sexo: $sexo';
}

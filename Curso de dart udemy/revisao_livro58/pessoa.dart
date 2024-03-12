abstract class Pessoa {
  final String nome;
  final String idade;
  final String sexo;

  const Pessoa({required this.nome, required this.idade, required this.sexo});

  @override
  String toString() => 'Nome:$nome, Idade$idade, Sexo:$sexo';
}

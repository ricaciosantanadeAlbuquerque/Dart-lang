abstract class Pessoa {
  final String nome;
  final int idade;
  final String sexo;

  const Pessoa({required this.nome, required this.idade, required this.sexo}); // Objeto Imutável

  @override
  String toString() => ' Nome:$nome, Idade:$idade, Sexo:$sexo ';
}

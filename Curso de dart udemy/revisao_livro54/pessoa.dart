import 'endereco.dart';

class Pessoa {
  final String nome;
  final int idade;
  final String sexo;
  final Endereco endereco;

  const Pessoa({required this.nome, required this.idade, required this.sexo, required this.endereco});

  @override
  String toString() => ' Nome:$nome, Idade:$idade, Sexo:$sexo, ';
}

import 'endereco.dart';

class Pessoa {
  final String nome;
  final String idade;
  final String sexo;
  final Endereco endereco;

  Pessoa({required this.nome, required this.idade, required this.sexo,required this.endereco});

  @override
  String toString() => ' Nome:$nome, Idade:$idade, Sexo:$sexo ';
}

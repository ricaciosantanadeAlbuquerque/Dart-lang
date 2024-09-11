abstract class Pessoa {
  final String nome;
  final int idade;
  final double altura;
  final String sexo;
  final double salario;

  const Pessoa({required this.nome, required this.idade, required this.altura, required this.sexo, required this.salario});

  @override
  String toString() {
    return ' Nome:$nome, Idade:$idade, Altura:$altura, Sexo:$sexo, Salário:$salario';
  }
}

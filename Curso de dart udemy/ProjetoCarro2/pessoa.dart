abstract class PessoaC {
  final String nome;
  final int idade;

  const PessoaC({required this.nome, required this.idade});

  @override
  String toString() {
    return 'Nome:$nome, Idade: $idade. ';
  }
}

class Contato {
  final String nome;
  final String numero;

  const Contato({required this.nome, required this.numero});


  @override
  String toString() => 'Nome: $nome, Número:$numero';
}

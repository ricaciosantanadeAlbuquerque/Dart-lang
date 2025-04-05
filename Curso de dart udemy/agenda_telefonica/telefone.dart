// Objeto imutável

class Telefone {
  final String nome;
  final int numero;

  const Telefone(this.nome, this.numero);

  @override
  String toString() => 'Nome: $nome, Numero:$numero';
}

void main() {
  List<Map<String, dynamic>> listaPessoas = [
    {'nome': 'Ricacio', 'idade': 29},
    {'nome': 'Lucas', 'idade': 26},
    {'nome': 'Ana', 'idade': 45},
    {'nome': 'Dora', 'idade': 58},
    {'nome': 'Julia', 'idade': 12},
    {'nome': 'Matheus', 'idade': 8},
  ];

  List<Map<String, dynamic>> listaPessoasMaiorIdade =
      listaPessoas.where((map) => map['idade'] >= 18).toList();

  listaPessoasMaiorIdade.forEach((map){
    print('Nome:${map['nome']}, Idade:${map['idade']}');
  });

  /**
   * Crie uma lista de Map<String, dynamic>, onde cada mapa representa uma pessoa com nome e idade.
      Filtre e exiba apenas as pessoas maiores de 18 anos
   */
}

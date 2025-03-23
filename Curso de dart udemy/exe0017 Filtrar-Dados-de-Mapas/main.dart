/**
 * Crie uma lista de Map<String, dynamic>, onde cada mapa representa uma pessoa com nome e idade.
 * Filtre e exiba apenas as pessoas maiores de 18 anos.
 */
void main() {
  List<Map<String, dynamic>> listaPessoa = [
    {'nome': 'Ricacio', 'idade': 32},
    {'nome': 'Lucas', 'idade': 29},
    {'nome': 'Carmem', 'idade': 17},
    {'nome': 'Ana', 'idade': 15},
  ];
  var colecaoIterable = listaPessoa.where((map) => map['idade'] > 18);

  colecaoIterable.forEach((map) {
    print('Nome: ${map['nome']}, idade: ${map['idade']}');
  });

  print('Pessoa Maiores de 18 anos $colecaoIterable');

  print('Convertendo para lista');

    print('Pessoa Maiores de 18 anos ${colecaoIterable.toList()}');

}

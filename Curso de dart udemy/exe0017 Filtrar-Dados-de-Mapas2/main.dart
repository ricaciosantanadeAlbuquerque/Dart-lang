/**
 * Crie uma lista de Map<String, dynamic>, onde
 *  cada mapa representa uma pessoa com nome e idade.
    Filtre e exiba apenas as pessoas maiores de 18 anos.
 */

void main() {
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Ricacio', 'idade': 32},
    {'nome': 'Lucas', 'idade': 30},
    {'nome': 'Ana', 'idade': 17},
    {'nome': 'Carmem', 'idade': 15},
    {'nome': 'Biza', 'idade': 16},
    {'nome': 'jj', 'idade': 20},
  ];
    
  print('--- Pessoas maiores de 18 anos (usando Iterable) ---');
  Iterable<Map<String, dynamic>> listaMaioresIdade = pessoas
      .where((map) => map['idade'] > 18); // filtrando a lista map pessoas
  // Coleção de Iterable
  listaMaioresIdade.forEach((map) {
    print('Nome: ${map['nome']}, Idade:${map['idade']}');
  });
  print('\n--- Convertendo para Lista ---');
  // convertendo para lista com função arrow

  List<Map<String, dynamic>> result = listaMaioresIdade.toList();

  result.forEach((map) => print('Nome:${map['nome']}, Idade: ${map['idade']}'));
}

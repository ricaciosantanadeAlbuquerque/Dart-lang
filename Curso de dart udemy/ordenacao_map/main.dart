/**
 * Crie uma lista de mapas contendo nome, idade e altura.
Ordene os objetos primeiro pela idade e, em caso de empate, pela altura
 */
void main() {
  List<Map<String, dynamic>> listaPessoas = [
    {'nome': 'Ricacio', 'idade': 30, 'altura': 1.72},
    {'nome': 'Lucas', 'idade': 28, 'altura': 1.81},
    {'nome': 'Ana', 'idade': 26, 'altura': 1.65},
    {'nome': 'Carmem', 'idade': 26, 'altura': 1.75},
  ];

  List<Map<String, dynamic>> result = ordenacao(listaPessoas);

  result.forEach(print);
}

List<Map<String, dynamic>> ordenacao(List<Map<String, dynamic>> listaMap) {
  // Criamos uma copia da lista original

  List<Map<String, dynamic>> listaOrdenada = List.from(listaMap);

  // Ordena com base nos critérios (idade e altura)
  listaOrdenada.sort((map_a, map_b) {
    int compareIdade = map_a['idade'].compareTo(map_b['idade']);
    return (compareIdade != 0)
        ? compareIdade
        : map_a['altura'].compareTo(map_b['altura']);
  });

  // Garante uma Lista imutável.
  return List.unmodifiable(listaOrdenada);
}

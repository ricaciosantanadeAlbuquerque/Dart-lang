
/**
 *Crie uma lista de mapas contendo nome, idade e altura.
Ordene os objetos primeiro pela idade e, em caso de empate, pela altu
 */
void main() {
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Ricacio', 'idade': 29, 'altura': 1.72},
    {'nome':'Dora','idade':26,'altura':1.61},
    {'nome': 'Lucas', 'idade': 26, 'altura': 1.63},
    {'nome': 'Ana', 'idade': 24, 'altura': 1.65},
  ];

   // Exibe a lista original
  print('Lista original:');
  pessoas.forEach(print);

  print('\nLista ordenada por idade e altura:');
  ordenacaoListaMap(pessoas);
}

/// Da menor idade para maior
/// ordenação em  crescente.
void ordenacaoListaMap(List<Map<String, dynamic>> listMap) {
  listMap.sort((a, b) => (a['idade'] != b['idade'])
      ? a['idade'].compareTo(b['idade'])
      : a['altura'].compareTo(b['altura']));

  listMap.forEach(print);
}

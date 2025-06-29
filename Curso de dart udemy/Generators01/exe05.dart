void main() {
  final Iterable<int> result = filtragem(lista: gerarValores());
  print(result);
  result.forEach((value) {
    print('Resultado: $value');
  });
}

/**
 * Filtragem com yield
 * Dada uma lista de inteiros, crie uma função sync* 
 * que use yield para retornar apenas os números maiores que 50.
 */

Iterable<int> gerarValores() sync* {
  for (int i = 0; i <= 100; i++) {
    yield i;
  }
}

/// sync* filtragem com yield

Iterable<int> filtragem({required Iterable<int> lista}) sync* {
  for (int value in lista) {
    if (value > 50) yield value;
  }
}

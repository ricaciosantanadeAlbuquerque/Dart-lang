import 'dart:math';

/**
 * Filtragem com yield
Dada uma lista de inteiros, crie uma função sync* que use yield para retornar apenas os números maiores que 50.
 */

void main(List<String> args) {
  Iterable<int> result = filtragem(gerarLista());
  print(result);
}

List<int> gerarLista() {
  Random random = new Random();
  List<int> numeros = [];

  for (int i = 0; i < 10; i++) {
    numeros.add(random.nextInt(100) + 1);
  }
  print(numeros);
  return numeros;
}

/// Generators sync*

Iterable<int> filtragem(List<int> list) sync* {
  for (var item in list) {
    if (item >= 50) yield item;
  }
}

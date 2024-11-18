/**
 * Crie um Map onde as chaves sejam números inteiros e os valores sejam os quadrados desses números. Por exemplo: {1: 1, 2: 4, 3: 9}.
Imprima o Map resultante.
 */

void main() {
  Map<int, int> mapInteiro = {1: 1, 2: 4, 3: 6, 4: 8};

  print('Map: $mapInteiro');

  mapInteiro.putIfAbsent(5, () => 10);

  print(mapInteiro);
}

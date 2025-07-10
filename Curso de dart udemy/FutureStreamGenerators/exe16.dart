/**
 *  Filtrar nomes com sync*
Retorne nomes que comecem com “A”.
 */

void main() {
  List<String> nomes = [
    'Ana',
    'Lucas',
    'Bia',
    'Angelica',
    'maria',
    'joão',
    'alcantara',
    'Aia',
  ];

  filtrandoNomes(nomes: nomes).forEach(print);
}

Iterable<String> filtrandoNomes({required List<String> nomes}) sync* {
  for (String nome in nomes) {
    if (nome.toLowerCase().startsWith('a')) {
      yield nome;
    }
  }
}

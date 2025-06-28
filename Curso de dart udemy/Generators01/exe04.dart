void main() {
  letras().forEach(print);
}

/**
 * Crie uma função sync* que gere uma Iterable<String>
 *  com as letras do alfabeto de A até Z.
 */

Iterable<String> letras() sync* {
  for (int i = 65; i <= 90; i++) {
    yield String.fromCharCode(i);
  }
}

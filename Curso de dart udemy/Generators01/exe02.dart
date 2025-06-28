void main() {
  final Iterable<String> tabuadaMatematica = tabuada(x: 10);

  for (String value in tabuadaMatematica) {
    print(value);
  }
}

/**
 *Gerador de tabuada
 *Crie uma função sync* que gere os múltiplos de um número x, de 1 até 10,
 * como uma Iterable.
 */

Iterable<String> tabuada({int x = 0}) sync* {
  for (int i = 0; i <= 10; i++) {
    yield ' $x x $i == ${x * i}';
  }
}

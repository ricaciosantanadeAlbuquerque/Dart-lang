/**
 * ✅ Tabuada com sync*
Gere a tabuada de um número x.
 */

void main() {
  tabuada().forEach(print);
}

Iterable<String> tabuada({int x = 10}) sync* {
  for (int i = 0; i <= x; i++) {
    yield '$i x $x == ${i * x}';
  }
}

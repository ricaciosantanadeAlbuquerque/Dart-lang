/**
 * Gerador de tabuada
 * Crie uma função sync* que gere os múltiplos
 * de um número x, de 1 até 10, como uma Iterable.
 */
void main(List<String> args) {
  tabuada(20).forEach((value) {
    print(value);
  });
}

///Generators Iterable sync* yield
Iterable<String> tabuada(int x) sync* {
  for (int i = 1; i <= 10; i++) {
    yield '$i x $x = ${i * x}';
  }
}

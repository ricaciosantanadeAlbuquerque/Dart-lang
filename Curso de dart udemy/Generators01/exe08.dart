void main() {
  contagemRegressiva().forEach(print);
}

/**
 * Contagem regressiva com Stream
Escreva uma função async* que conte regressivamente de 10 até 0, emitindo um número a cada segundo.
 */

Stream<int> contagemRegressiva() async* {
  for (var i = 10; i >= 0; i--) {
    yield i;
  }
}

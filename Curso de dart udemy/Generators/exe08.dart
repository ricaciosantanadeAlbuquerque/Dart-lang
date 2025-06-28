/**
 *Contagem regressiva com Stream
Escreva uma função async* que conte regressivamente de 10 até 0, emitindo um número a cada segundo.
 */
void main(List<String> rags) {
  List<int> numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  contagemRegressiva(numeros: numeros).forEach(print);
}

Stream<int> contagemRegressiva({required List numeros}) async* {
  for (int item = numeros.length - 1; item >= 0;item--) {
    await Future.delayed(Duration(seconds: 1));
    yield numeros[item];
  }
}

/**
 * Sequência de Fibonacci limitada
 * Escreva uma função sync* que gere os primeiros n números da sequência de Fibonacci.
 */
void main(List<String> args) {
  print(gerarFibonacci(n: 10));
}

Iterable<int> gerarFibonacci({required int n}) sync* {
  int a = 0;
  int b = 1;

  for (var i = 0; i < n; i++) {
    yield a;
    int tempo = a + b;
    a = b;
    b = tempo;
  }
}

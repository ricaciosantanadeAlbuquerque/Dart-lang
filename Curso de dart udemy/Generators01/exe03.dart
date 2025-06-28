void main() {
  sequenciaFibonacci(n: 5).forEach(print);
}

/**
 * Sequência de Fibonacci limitada
 * Escreva uma função sync* que gere os primeiros n números da sequência de Fibonacci.
 */

/// Generators sync*
/**
 * Sequência de fibonacci é um valor gerado pela soma dos seus dois ultimos números
 */
Iterable<int> sequenciaFibonacci({required int n}) sync* {
  int a = 0;
  int b = 1;

  for (int i = 0; i <= n; i++) {
    yield a;
    int caixa = a + b;
    a = b;
    b = caixa;
  }
}

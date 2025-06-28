
void main() {
  numerosPares(n: 10).forEach((e) {
    print('Numeros pares: $e');
  });
}

/**
 * Números pares de 0 até n
Crie uma função sync* que receba um número n e gere uma sequência de números pares de 0 até n.
 */

Iterable<int> numerosPares({required int n}) sync* {
  for (int i = 0; i <= n; i++) {
    if (i % 2 == 0) yield i;
  }
}

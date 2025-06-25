/**
 * Números pares de 0 até n
 * Crie uma função sync* que receba um número n e gere uma sequência de números pares de 0 até n.
 */

void main(List<String> args) {
  Iterable<int> soma = funcaoPar(20);
  soma.forEach(print);
}

/// Funcao Generator 
Iterable<int> funcaoPar(int nValor) sync* {
  for (int i = 0; i <= nValor; i++) {
    if (i % 2 == 0) {
      yield i;
    }
  }
}

/**
   * Crie uma função recursiva que recebe um número n e retorna a soma de 1 + 2 + ... + n.
Exemplo: soma(5) → 1 + 2 + 3 + 4 + 5 = 15
   */

void main(List<String> args) {
  var result = somaRecursiva(n: 5);

  print('Resultado: $result');
}

int somaRecursiva({required int n}) {
  int resultado = 0;

  for (var i = 1; i <= n; i++) {
    resultado += i;
  }

  return resultado;
}

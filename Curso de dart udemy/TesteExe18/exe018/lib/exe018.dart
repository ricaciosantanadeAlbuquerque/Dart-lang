int multiplicar({int n1 = 0, int n2 = 0}) {
  assert(
    !n1.isNegative && !n2.isNegative,
    'O valor passado para n1 ou n2 é Negativo',
  );
  if (n1.isNegative || n2.isNegative) {
    return 0;
  } else {
    return n1 * n2;
  }
}
/**
 * Função int multiplicar(int a, int b)
Use assert(a != 0 && b != 0)

Escreva testes:

Com test() para validar os resultados

Com expect(..., equals(...))
 */
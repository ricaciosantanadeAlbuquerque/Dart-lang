int calculate() {
  return 6 * 7;
}

int soma({int valor1 = 0, int valor2 = 0}) {
  assert(!valor1.isNegative && !valor2.isNegative);
  return valor1 + valor2;
}

int subtracao({required int n1, required int n2}) {
  assert(!n1.isNegative && !n2.isNegative);
  return n1 - n2;
}

/**
 *   assert(!n1.isNegative && !n2.isNegative);
 *   Se o valor for negativo, lança uma exceção
 */
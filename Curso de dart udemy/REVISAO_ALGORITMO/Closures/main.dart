void main() => test();

void test() {
  int Function(int) multiplicador(int valor1) =>
      (int valor2) => valor1 * valor2;

  var calculado = multiplicador(20);

  print(calculado);

  print('Multiplicado por 5: ${calculado(5)}');
  print('Multiplicado por 20: ${calculado(20)}');
}

/**
 * Crie uma função que retorna outra função.
 * A função retornada deve multiplicar um número por um valor fixo definido na primeira função
 */

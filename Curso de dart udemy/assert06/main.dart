import 'dart:developer';

/**
 * 6️⃣ Verificar divisibilidade
Faça a função dividir(int a, int b) 
e use assert() para verificar que b não é zero.
 */

void main(List<String> args) {
  log('Resultado da divisão de valores, ${dividir(a: 100, b: 2)}');
  log('---------------------------------------------------------');
  // log('Resultado da divisão ${dividir(a: 20, b: 0)}'); AssertionError
}

int dividir({required int a, required int b}) {
  assert(b > 0, 'Não é possível fazer divisão inteira por zero');
  return a ~/ b;
}

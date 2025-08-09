import 'dart:developer';
import 'package:test/test.dart';

void main() {
  setUpAll(() => log('Inicio Global')); // passo 1
  tearDownAll(() => log('Fim global')); // passo 3

  test('Exemplo Simples', () { // passo 2
    expect(1 + 1, equals(2));
  });
}

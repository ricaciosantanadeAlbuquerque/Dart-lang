import 'package:exe01/exe01.dart';
import 'package:test/test.dart';

void main() {
  group('Manipulando Números', () {
    test('O dobro do valor', () {
      expect(dobro(valor: 0), equals(110));
    });
  });
}

/**
 * Falha  no test
 *  
  Expected: <110>
    Actual: <10>

    expect(valor testeado, valor esperado);

    Se o valor atual não for o esperado, então haverá uma exceção
 */

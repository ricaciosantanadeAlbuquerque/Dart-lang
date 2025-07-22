import 'package:exe02/exe02.dart';
import 'package:test/test.dart';

void main() {
  /**
   * Crie um grupo de testes group('ePar', ...)
   * Use expect(..., anyOf([isTrue, isFalse]))
   */

  group('Testando numeros pares', () {
    test('É par ?', () {
      expect(ePar(12), anyOf([true]));
    });
  });
}

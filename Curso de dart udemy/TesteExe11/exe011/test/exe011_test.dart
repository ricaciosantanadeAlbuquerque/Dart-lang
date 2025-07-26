import 'package:exe011/exe011.dart' as somado;
import 'package:test/test.dart';

void main() {
  group('Calculando valores', () {
    test('calculate', () {
      expect(somado.calculate(), 42);
    });

    test('Soma de valores', () {
      expect(somado.soma(valor1: 10, valor2: 30), equals(40));
    });

    test('Subtração', () {
      expect(somado.subtracao(n1: -20, n2: 13),equals(7));
    });
  });
}

import 'package:exe015/exe015.dart';
import 'package:test/test.dart';

void main() {
  group('Test de conjuntos', () {
    test('Unicao set<>', () {
      expect(uniao({12, 13, 14}, {}), equals({2, 5, 7, 12, 13, 14}));
    });

    test('Difference', () {
      expect(diferenca(n1: {1, 2, 3}, n2: {1, 2, 4}),equals({3}));
    });
  });
}

/**
 * Como o segundo conjunto Set{} passado para funcao uniao() está vazio,
 * o assert() lança uma excecao já que o resultado e false.
 */

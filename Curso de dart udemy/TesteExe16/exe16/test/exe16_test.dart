import 'package:exe16/exe16.dart' as nan;
import 'package:test/test.dart';

void main() {
  group('test de collections', () {
    test('Testando as coleções para ver se tem os mesmo valores', () {
      expect(nan.saoConjuntosIguais(n1: {1, 2}, n2: {1, 2}), isTrue);
    });
  });
}

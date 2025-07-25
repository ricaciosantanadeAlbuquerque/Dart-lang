import 'package:exe07/exe07.dart';
import 'package:test/test.dart';

void main() {
  group('Filtrar Impares', () {
    test('Filtragem de impares', () {
      expect(
        filtrarImpares([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
        equals([1, 3, 5, 7, 9]),
      );
    });
  });
}

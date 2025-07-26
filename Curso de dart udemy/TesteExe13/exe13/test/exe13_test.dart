import 'package:exe13/exe13.dart';
import 'package:test/test.dart';

void main() {
  group('Trabalhando com coleções', () {
    test('lista para set', () {
      expect(numerosUnicos([11, 12, 13, 11, 12, 13]), allOf([equals({11,12,13}),isNotEmpty,contains(13),isA<Set>()]));
    });
  });
}

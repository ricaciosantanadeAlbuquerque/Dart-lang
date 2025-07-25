import 'package:exe09/exe09.dart' as email;
import 'package:test/test.dart';

void main() {
  group('Validando Email', () {
    test('Validando Email', () {
      expect(email.validarEmail('ricaciozz@gmail.com'), isTrue);
      expect(
        email.validarEmail('ricaciozz@gmail.com'),
        allOf(isA<bool>(), equals(true)),
      );
    });
  });
}

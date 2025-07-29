import 'package:exe019/exe019.dart' as letra;
import 'package:test/test.dart';

void main() {
  group('Manipulando String', () {
    test('Convertendo para maiúsculo', () {
      expect(
        letra.paraMaiusculo(texto: 'ricacio'),
        allOf([isA<String>(), equals('RICACIO')]),
      );
    });
  });
}

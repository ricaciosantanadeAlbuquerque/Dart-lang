import 'package:exe32/exe32.dart';
import 'package:test/test.dart';

void main() {
  test('Retornar null', () {
    expect(retornarNull(true), isNull);
  });

  test('Retornar valor', () {
    expect(retornarNull(false), equals('ok'));
  });
}

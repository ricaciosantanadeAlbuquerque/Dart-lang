import 'package:exe05/exe05.dart' as exe05;
import 'package:test/test.dart';

void main() {
  test('Retorna null', () {
    expect(exe05.retornarNull(true), isNull);
  });

  test('retorna valor', () {
    expect(exe05.retornarNull(false), equals('ok'));
  });
}

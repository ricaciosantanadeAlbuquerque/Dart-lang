import 'package:exe32/exe32.dart' show aprovado;
import 'package:test/test.dart';

void main() {
  test('Maior que 10', () {
    expect(15, greaterThan(10));
  });

  test('Menor que 10', () {
    expect(8, lessThan(10));
  });

  test('Nota suficiente', () {
    expect(aprovado(8), isTrue);
  });

  test('Nota reprovada', () {
    expect(aprovado(5),isFalse);
  });
}

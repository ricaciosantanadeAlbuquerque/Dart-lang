import 'package:exe06/exe06.dart' show aprovado;
import 'package:test/test.dart';

void main() {
  test('Maior que 10', () {
    expect(15, greaterThan(10));
  });

  test('Menor que 10', () {
    expect(8, lessThan(10));
  });

  test('Aprovado', () {
    expect(aprovado(nota: 8), equals(true));
  });

  test('Reprovado', () {
    expect(aprovado(nota: 5), isFalse);
  });
}

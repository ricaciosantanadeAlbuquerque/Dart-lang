import 'package:test/test.dart';

late int contador;

void main() {
  setUp(() => contador = 0);
  tearDown(() => contador = 0);
  test('Increment', () {
    contador++;
    expect(contador, equals(1));
  });

  test('Novo teste deve está zerado', () {
    expect(contador, 0);
  });
}

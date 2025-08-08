import 'package:exe30/exe30.dart';
import 'package:test/test.dart';

void main() {
  group('Teste com inteiros', () {
    test('Valor está na lista', () {
      final numeros = [1, 2, 3];
      expect(numeros.contains(escolherAleartorio(numeros)), isTrue);
    });
  });

  group('Teste com Strings', () {
    test('Valor está na lista', () {
      final palavras = ['a', 'b', 'c', 'd'];
      expect(palavras.contains(escolherAleartorio(palavras)), isTrue);
    });
  });
}

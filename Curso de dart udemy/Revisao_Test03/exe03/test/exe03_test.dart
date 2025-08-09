import 'package:exe03/exe03.dart' show escolherAleatorio;
import 'package:test/test.dart';

void main() {
  group('Teste com inteiros', () {
    test('Valor está na lista', () {
      final List<int> numeros = [1, 2, 3, 4, 5, 6];
      expect(numeros.contains(escolherAleatorio(numeros)), isTrue);
    });
  });

  group('Teste com String', () {
    test('Valor está na lista', () {
      final List<String> palavras = ['a', 'b', 'c'];
      expect(palavras.contains(escolherAleatorio(palavras)), isTrue);
    });
  });
}

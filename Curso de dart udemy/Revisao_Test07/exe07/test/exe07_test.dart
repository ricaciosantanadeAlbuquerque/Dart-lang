import 'package:test/test.dart';
import 'dart:math';

late Random random;

dynamic escolher({required List lista}) {
  // lista tamanho == 4
  return lista[random.nextInt(lista.length)]; // valores entre 0 e 3
}

void main() {
  setUpAll(() => random = Random());

  test('Escolha existe1 na lista', () {
    final List<String> letras = ['A', 'B', 'C', 'D'];
    expect(letras.contains(escolher(lista: letras)),isTrue);
  });
}

import 'dart:math';

import 'package:exe33/exe33.dart';
import 'package:test/test.dart';

late Random random;

dynamic escolher(List lista) => lista[random.nextInt(lista.length)];

void main() {
  setUpAll(() => random = Random());

  test('Escolha Existe na lista', () {
    final lista = ['A', 'B', 'C'];
    expect(lista.contains(escolher(lista)), isTrue);
  });
}

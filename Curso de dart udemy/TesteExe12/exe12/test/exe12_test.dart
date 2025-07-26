import 'dart:developer';

import 'package:exe12/exe12.dart';
import 'package:test/test.dart';

void main() {
  late List<String> lista;

  setUp(() {
    lista = ['Banana', 'Maracuja'];
    log('Inicializando lista de frutas $lista');
  });

  test('Lista contem banana ?', () {
    expect(lista.contains('Banana'), isTrue);
  });

  tearDown(() {
    lista.clear();
    log('Limpando a lista de frutas $lista');
  });
}


/**
 * setUp() e tearDown()
Executam antes e depois de cada teste em um grupo.
 */
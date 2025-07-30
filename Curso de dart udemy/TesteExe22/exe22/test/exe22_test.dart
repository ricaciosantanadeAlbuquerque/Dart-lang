import 'dart:developer';

import 'package:exe22/cachorro.dart';
import 'package:exe22/gato.dart';
import 'package:test/test.dart';

void main() {
  /// Declarando objetos com late
  late Gato gato;
  late Cachorro cachorro;

  /// Inicializando objetos com setUp antes do test()
  setUp(() {
    log('O corre antes dos test.');
    gato = Gato();
    cachorro = Cachorro();
  });

  /// Ocorre dois que os test são finalizados
  tearDown(() {
    log('Fim dos Test....');
  });

  group('Fala dos Animais', () {
    test('Animais domestico', () {
      expect(gato.falar(), anyOf([equals('AuAu'), equals('Miau')]));
      expect(cachorro.falar(), anyOf([equals('AuAu'), equals('Miau')]));
    });
  });
}

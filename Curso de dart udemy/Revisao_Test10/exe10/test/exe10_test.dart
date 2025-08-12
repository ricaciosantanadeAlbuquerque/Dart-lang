import 'dart:developer';

import 'package:exe10/exe10.dart' show  soma, subtracao;
import 'package:test/test.dart';

void main() {
  log('Soma: ${soma(n1: 50, n2: 100)}');
  log('Subtraão: ${subtracao(150, 50)}');
  //log('Multiplicação: ${multiplicacao()}') não está visivel

  group('Teste de valores', () {
    test('Soma', () {
      expect(
        soma(n1: 50, n2: 150),
        allOf([greaterThan(10), equals(200), isNotNaN]),
      );
    });

    test('Subtração', () {
      expect(subtracao(150, 250), anyOf([lessThan(25), equals(125)]));
    });

    /**
     *  test('Multiplicaão', () {
      expect(multiplicacao(n1: 3, n2: 3), 9);
    });
     */
  });
}

// isNaN  == não é um número
// isNotNaN == é um número
// allOf([]) todos devem ser verdadeiros para ser verdade
// anyOf([]) apenas um deve ser verdade.

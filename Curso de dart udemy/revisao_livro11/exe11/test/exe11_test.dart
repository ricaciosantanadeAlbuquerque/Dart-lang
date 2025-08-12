import 'dart:developer';

import 'package:exe11/exe11.dart' hide soma;
import 'package:test/test.dart';

void main() {
  //  log('Soma ${soma(n1, n2)}'); //está visivel
  log('Subtracao ${subtracao(40, 20)}');
  log('Multiplicação ${multiplicacao(5, 5)}');

  test('Multiplicação', () {
    expect(multiplicacao(3,3), isNotNaN);
  });
}

/**
 * isNotNaN == é numero.
 * hide  ele importa tudo do aquivo. menos o que está listado após a palavra
 * hide
 */
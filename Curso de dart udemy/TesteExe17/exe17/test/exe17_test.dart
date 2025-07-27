import 'dart:developer';

import 'package:exe17/exe17.dart';
import 'package:test/test.dart';

void main() {
  ///inicializando valores
  late ConjuntoSeguro conjuntoSeguro;

  /// Idicializando o bjeto e seus valores
  setUp(() {
    conjuntoSeguro = ConjuntoSeguro<int>();
    conjuntoSeguro
      ..adicionar(22)
      ..adicionar(33)
      ..adicionar(44);

    log('Antes do test ${conjuntoSeguro.tamanho()}');
  });

  test('Testando os valores o objeto', () {
    expect(conjuntoSeguro.contem(22), anyOf([equals(true), isTrue]));
    expect(conjuntoSeguro.tamanho(), equals(3));
  });

  tearDown(() {
    conjuntoSeguro.limpar();
    log('Apos os test ${(conjuntoSeguro.tamanho())}');
  });
}

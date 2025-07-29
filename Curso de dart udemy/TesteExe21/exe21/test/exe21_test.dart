import 'dart:developer';
import 'package:exe21/exe21.dart';
import 'package:test/test.dart';

void main() {
  
  setUpAll(() {
    log('Iniciando  os Testes...');
  });

  tearDownAll(() {
    log('Finalizando os Testes...');
  });

  test('Mensagem carregada', () async {
    final result = await carregarMensagem();
    expect(result, equals('Carregado'));
  });
}

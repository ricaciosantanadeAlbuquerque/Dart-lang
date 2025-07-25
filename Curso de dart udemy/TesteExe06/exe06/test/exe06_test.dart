import 'package:exe06/exe06.dart';
import 'package:test/test.dart';

void main() {
  test('Carregamento de Dados', () async {
    final result = await carregarDados();
    expect(result, equals('ok'));
  });
}

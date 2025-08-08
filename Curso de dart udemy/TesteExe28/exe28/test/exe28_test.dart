import 'package:exe28/exe28.dart';
import 'package:test/test.dart';

void main() {
  // passo um
  setUpAll(() => print('Início global'));

// passo três
  tearDownAll(() => print('Fim global'));

 // passo dois 
  test('Exemplo Simples', () {
    expect(1 + 1, 2);
  });
}

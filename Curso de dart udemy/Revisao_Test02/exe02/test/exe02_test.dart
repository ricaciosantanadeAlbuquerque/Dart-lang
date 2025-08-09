import 'package:test/test.dart';

void main() {
  late List<String> nomes; // passo 0

  setUp(() => nomes = []); // passo 1
  tearDown(() => nomes.clear()); // passo 3

  test('Adiciona nome', () {
    // passo 2.0
    nomes.add('João');
    expect(nomes.length, equals(1));
  });

  test('Começa vazio novamente', () { // passo 2.1
    expect(nomes, isEmpty);
  });
}

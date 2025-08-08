import 'package:test/test.dart';

void main() {
  late List<String> nomes; // declarando

  setUp(() => nomes = []); // inicializando
  tearDown(() => nomes.clear()); // limpando os Dados

  test('Adiciona nome', () {
    nomes.add('João');
    expect(nomes.length, greaterThan(0));
  });

  test('Começa vazio novamente', () {
    expect(nomes, isEmpty);
  });
}

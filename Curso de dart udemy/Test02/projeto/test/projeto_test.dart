import 'package:projeto/projeto.dart' as teste;
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(teste.calculate(), 42);
  });

  group('Manipulando Strings', () {
    test('converteNomeEmLista', () {
      expect(
        teste.converteNomeEmLista(nome: 'ricacio,ana,carmem'),
        equals(['ricacio', 'ana', 'carmem']),
      );
    });
    test('idade', () {
      expect(teste.maiorIdade(idade: 13), equals('Criança'));
      expect(teste.maiorIdade(idade: 20), equals('Adulto'));
      expect(teste.maiorIdade(idade: 16), equals('Adolecente'));
    });

    test('recuperarNome', () {
      expect(
        teste.recuperarNome(lista: ['ricacio', 'ana']),
        allOf(contains('ca'), isNot(startsWith('B')), endsWith('o')),
      );
    });
  });

  group('Manipulando numeros', () {
    test('somando valores', () {
      expect(teste.somar(10, 10), equals(20));
    });
  });
}

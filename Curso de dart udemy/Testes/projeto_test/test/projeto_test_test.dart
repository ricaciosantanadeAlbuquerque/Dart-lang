import 'package:projeto_test/projeto_test.dart';
import 'package:test/test.dart';

void main() {
  group('valores numericos', () {
    test('Calcular', () {
      expect(calculate(), 42);
    });

    test('Verificar Maior Idade', () {
      expect(maiorIdade(idade: 18), equals('Adulto'));
      expect(maiorIdade(idade: 17), equals('Adolecente'));
      expect(maiorIdade(idade: 13), equals('Criança'));
    });

    test('Resto da divisão', () {
      expect(restoDivisao(12, 3), equals(0));
    });
  });

  group('Manipulando String', () {
    test('Recuperar Nome', () {
      expect(
        recuperarNome(['ricacio', 'ana']),
        allOf(contains('cacio'), isNot(startsWith('a')), endsWith('o')),
      );
    });

    test('Converte String em Lista', () {
      expect(
        converteEmLista('Ricacio Santana'),
        equals(['Ricacio', 'Santana']),
      );
    });
  });
}

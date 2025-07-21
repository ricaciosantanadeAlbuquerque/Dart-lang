import 'package:dart_application_1/dart_application_1.dart';
import 'package:test/test.dart';

void main() {
  group('Testando valores com String', () {
    test('Converte nome em array', () {
      expect(
        converteEmLista('Ricacio Santana Albuquerque'),
        equals(['Ricacio', 'Santana', 'Albuquerque']),
      );
    });
    test('verificar Idade', () {
      expect(maiorIdade(10), equals('Criança'));
      expect(maiorIdade(17), equals('Adolecente'));
      expect(maiorIdade(18), equals('Adulto'));
    });

    test('Recuperar nome', () {
      expect(
        recuperarNome(['Ricacio', 'Santana', 'albuquerque']),
        allOf(contains('ca'), isNot(startsWith('p')), endsWith('o')),
      );
    });
  });

  group('Test com valores numericos', () {
    test('Soma', () {
      expect(soma(28, 20), equals(48));
    });
    test('calculate', () {
      expect(calculate(), 42);
    });

    test('Resto da divisão', () {
      expect(restoDivisao(num1: 12, num2: 3), equals(0));
    });
  });
}

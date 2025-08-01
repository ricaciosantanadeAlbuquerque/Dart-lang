import 'package:exe27/exe27.dart';
import 'package:test/test.dart';

void main() {
  late List<int> listaNumeros;

  group('Todos os Test', () {
    group('Test com inteiros', () {
    test('Escolhe um numero da lista', () {
      final numeros = [1, 2, 3, 4, 5];
      final resultado = escolhaAleatoria(numeros);
      expect(numeros.contains(resultado), isTrue);
    });
  });

  group('Teste com String', () {
    test('Escolhe String da lista', () {
      final palavras = ['maçã', 'banana', 'laranja'];
      final resultado = escolhaAleatoria(palavras);
      expect(palavras.contains(resultado), isTrue);
    });
  });

  group('Teste  com Booleanos', () {
    test('Escolha com booleano da lista', () {
      final booleano = [true, false];
      final resultado = escolhaAleatoria(booleano);
      expect(booleano.contains(resultado), isTrue);
    });
  });

  group('Teste co lista vazia', () {
    test('Retorna null', () {
      final lista = [];
      final resultado = escolhaAleatoria(lista);
      expect(resultado, isNull);
    });
  });
  });
}

import 'package:exe05/exe05.dart' as exe05;
import 'package:test/test.dart';

void main(List<String> arguments) {
  print('A soma de todos os valores ${exe05.somarLista(lista: [20, 20, 20])}');

  test('Somando os valores de uma lista', () {
    expect(exe05.somarLista(lista: [20, 20, 20]), equals(60));
  });
}

/**
 *  Função int somaLista(List<int> lista)
Retorna a soma de todos os elementos de uma lista.

Teste:

Soma correta com expect(..., equals(...))

Lista vazia com assert(lista.isNotEmpty)
 */

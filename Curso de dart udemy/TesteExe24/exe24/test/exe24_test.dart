import 'dart:developer';

import 'package:exe24/exe24.dart';
import 'package:test/test.dart';

/**Use tearDown() para limpar recursos
Simule uma lista de nomes compartilhada

Após cada teste, limpe com tearDown() (ex: nomes.clear())

Teste que a lista está vazia no início de cada teste */
void main() {
  group('Trabalhando com Listas de Nomes', () {
     List<String> nomes = [];
  tearDown(() {
    log('Limpado a lista !');
    nomes.clear();
  });

  test('adicionando um nome', () {
    expect(nomes, isEmpty); // deve está vazio no inicio do test
    nomes.add('ricacio');
    expect(nomes, contains('ricacio'));
  });

  test('Adiconando dois nomes', () {
    expect(nomes, isEmpty); //  deve está vazio  já que  tearDown() limpa tudo
    nomes.addAll(['Ana', 'Lucas']);
    expect(nomes.length, 2);
  });
  });
}

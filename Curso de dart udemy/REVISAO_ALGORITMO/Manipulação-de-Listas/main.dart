/**
 * Crie uma lista de inteiros com 10 elementos.
 *  Adicione mais dois números.
 *  Remova o primeiro número.
 *  Imprima a lista ordenada de forma crescente e decrescente
 */

import 'dart:collection';

import 'Dart:math';

void main(List<String> args) {
  List<int> numeros = List.generate(10, (index) => Random().nextInt(10) + 1);

  print('Mostrando a lista. ${numeros}\n');

  // adicionar um dois  valores a  lista.

  numeros.addAll([25, 35]);

  // removendo o 1 primeiro numero.

  numeros.removeAt(0);
  // ordenando uma lista

  List<int> crescente = List.from(numeros)..sort();
  print('Lista ordenada (crescente) $crescente');

  // ordenando em decrescente
  print('');
  List<int> decrescente = List.from(numeros)..sort((a, b) => b.compareTo(a));
  print('Lista ordenada em (decrescente) $decrescente');

  SplayTreeSet colecaoUnica = SplayTreeSet();
  colecaoUnica.addAll(decrescente);  // coleção ótima para gerar valores não redundantes

  print('\n Coleção SplayTreeSet $colecaoUnica');
}

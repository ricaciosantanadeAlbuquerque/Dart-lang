import 'dart:collection';
import 'dart:math';

void main(List<String> args) {
  Queue<int> colecao = Queue();

  print('Implementação ${colecao.runtimeType}'); //ListQueue<int>

  colecao.addAll([
    1,
    2,
    3,
    4,
    5,
  ]);

  colecao.add(1500); // adicionar no final da lista
  colecao.addFirst(200); // adicionar no começo da lista
  colecao.addLast(250); // adicionar no fim da lista

  print(colecao);

  colecao.removeLast(); // remover o ultimo elemento da lista
  colecao.removeFirst(); // remover o primeiro elemento da lista
  colecao.removeWhere((e) => e == 5); // remover onde o elemento for igual 5

  Queue<int> colecao01 = Queue();
  colecao01.addAll(colecao);
  print(identical(colecao, colecao01));

// for

  for (var j = 0; j < colecao.length; j++) {
    print('for ${colecao.elementAt(j)}');
  }
  print('');
// for in

  for (var element in colecao01) {
    print('for in ${element}');
  }

// forEach()
  print('');

  print('\n');
  colecao01.forEach((e) => print('forEach() ${e}'));

  print(identical(colecao, colecao01));

  Queue<List<int>> lista = Queue();

  for (var i = 0; i < 10; i++) {
    List<int> num1 = [];
    for (var j = 0; j < 10; j++) {
      num1.add(Random().nextInt(100) + 1);
    }
    lista.add(num1);
  }

  print(lista); // Queue é uma coleção dinamica de elementos entre chaves {} que não possuem index e podem  manipular o inicio e fim da lista

  print('Implementação ${lista.runtimeType}');

  lista.addFirst([
    1,
    2,
    3,
    4,
    5,
  ]);
  lista.addLast([
    10,
    10,
    10,
  ]);

  print('');

  print(lista);

// pegando acada elemnto da minha coleção Queue<> e concatenando

  final List<int> concat = lista.expand((e) => e).toList();
  print('');
  print(concat);

  Queue<int> receberValor = Queue();

  receberValor.addAll(concat);

  print('');
  print(receberValor.runtimeType);
  print('');

  print(receberValor.length);
  print('');
  receberValor.clear();
  for (var j = 0; j < receberValor.length; j++) {
    //receberValor.remove(receberValor.elementAt(j));
    //receberValor.removeLast();
    //receberValor.removeFirst();
  }
  print('');
  print(receberValor);
}

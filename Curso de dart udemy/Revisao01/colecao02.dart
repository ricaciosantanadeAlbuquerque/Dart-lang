import 'dart:collection';
import 'dart:math';

void main() {
  set();
  hashSet();
  splayTreeSet();
  queue();
}

/**
 * Set é uma coleção dinâmica de elementos únicos e ordenados entre chaves separados por virgula.
 * Não indexado (Não aceita acesso por index [])
 */
void set() {
  Set<int> listSet = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  print(listSet);
  Set<num> listSet2 = Set();
  listSet2.add(5650); // adiciona o valor no final da coleção Set() {}
  print('');
  print(listSet2);
  listSet2.addAll(listSet); // Adiciona tudo de uma coleção a outra coleção.
  print('');
  print(listSet2);

// métodos  da coleção set

  Set<double> num1 = {1, 2, 3};

  Set<double> num2 = {4, 5, 3};

  //  o método difference

  print(num1.difference(num2)); // o que num1 tem de diferente para num2.
  print(num1.union(num2)); // a união das duas coleções.
  print(num1.intersection(num2)); // o que é comum as duas coleções.
  print(num1.lookup(5650)); // se este valor existe, então ele será retornado. caso contrario retorna null
  print(num1.lookup(3)); // faz uma bucas

  Set<int> valor = Set();
  Set<int> numero = Set();

  for (var i = 0; i < 10; i++) {
    valor.add(i);
    numero.add(Random().nextInt(10 + 1));
  }

  print(valor);
  print('Buscando o valor 8: ${valor.lookup(8)}');
  print('');
  print(numero);

  // fazendo Iteração for()

  for (var j = 0; j < numero.length; j++) {
    print(numero.elementAt(j));
  }

  // for in
  print('');

  for (var i in valor) {
    print(i);
  }
  print('');
  // forEach()

  numero.forEach((e) => print(e));
  print('');
}

/**
 * HashSet é uma coleção dinâmica de elementos entre chaves separados por virgula. que não podem ser acessados por index.
 */
void hashSet() {
  HashSet<int> hashSet = HashSet();
  HashSet<int> hashSet02 = HashSet();

  for (var i = 0; i < 10; i++) {
    hashSet.add(i);
  }

  hashSet.add(200);

  print(hashSet);

  hashSet.add(565);
  print('');
  print(hashSet);
  hashSet02 = HashSet<int>.from(hashSet.where((element) => element > 7));
  // pega todos os lemento da coleção de Iterable e adiciona em hashSet02
  print(hashSet02);
  /**
   * as HashSet<int>, o [as] é utilizado para tipar. O que a gente chama de  type casting
   * is realiza um teste lógico.
   */
  var teste = 0;
  var result = teste is String;
  print(result);

  // difference

  print(hashSet.difference(hashSet02));
  hashSet02.add(250);
  print(hashSet02.difference(hashSet));

  // union

  print(hashSet.union(hashSet02));

  // intersection

  print(hashSet.intersection(hashSet02));

  // lookup

  print(hashSet.lookup(250)); // faz uma busca, se o valor existir então será  retornado. se não retornará true.
}

/**
 * SplayTreeSet: é uma coleção única e dinâmica capaz de se ordenar por sí só automaticamente.
 * os elementos estão contidos entre chaves e separados por virgula. Não aceita acesso por index ou valores nulos.
 */

void splayTreeSet() {
  print('');
  SplayTreeSet<num> sorteio = SplayTreeSet();
  SplayTreeSet<num> sorte2 = SplayTreeSet();

  for (var i = 0; i < 10; i++) {
    var resul = 1 + Random().nextInt(10);
    sorteio.add(resul);
    sorte2.add(Random().nextInt(10) + 1);
  }

  sorteio.forEach((e) => print(e));
  print('');
  print(sorte2);
}

// Queue é uma coleção dinâmica de elementos  entre chaves separados por virgula. aceita valores repetidos
// Mas não aceita acesso por index
void queue() {
  Queue<int> listaNumeros = Queue();
  ListQueue<int> listaValor = ListQueue();

  listaNumeros.add(20);
  listaNumeros.add(20);

  print(listaNumeros);

  listaValor.addFirst(150);
  listaValor.addAll(listaNumeros);
  listaValor.addLast(5000);
  print('');
  print(listaValor);

  // removendo

  print(listaValor.removeLast());// retorna o que está sendo removido
  print('');
  print(listaValor);
  print(listaValor.removeFirst());
  print(listaValor);
}

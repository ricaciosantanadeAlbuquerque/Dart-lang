import 'dart:collection';


void main(List<String> args) {
  queue();
}

/// Queue é uma coleção dinâmica  de elementos entre chaves separados por virgula. {} Que não possuem acesso por index. podem
/// Manipular o início e fim da lista por meio de funções
///
void queue() {
  Queue<int> num1 = new Queue();

  for (var i = 0; i < 10; i++) {
    num1.add(i); // {} Queue coleção de elementos entre chaves
  }

  print(num1);

  ListQueue<int> lista = ListQueue();

  lista.addAll(num1);
  lista.add(1500);
  lista.addFirst(3000);
  lista.addLast(5000);
  lista.addLast(5000);

  print('');
  print(lista); // Queue aceita valores redundantes

  lista.removeFirst();
  lista.removeLast();

   print('');
  print(lista);

  lista.removeWhere((e) => e == 5);

   print('');
  print(lista);
  print('Implementação ${lista.runtimeType}');


  /// Set é uma coleção de elementos únicos, não aceita valores redundantes

  Set<int>? listSet = Set();

  for(var i  = 0; i < 10; i++){
    print(i);
    listSet.add(i);
  }

  print('==');
  print(listSet);
  

  HashSet<int> listHashSet = HashSet();

  listHashSet.addAll(lista);
  listHashSet.addAll(listSet);
  listHashSet.add(25);


  print('');
  print(listHashSet);


  SplayTreeSet<int> listSplayTreeSet = SplayTreeSet();
  listSplayTreeSet.addAll(listHashSet);


  print(listSplayTreeSet);
}

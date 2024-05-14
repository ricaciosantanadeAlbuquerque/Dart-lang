import 'dart:collection';
import 'dart:math';

void main() {
  queue();
}

/// Queue é uma coleção elementos entre chaves {}, sem index que manipula o início e fim da lista.
void queue() {
  Queue<int> queue = Queue(); // linha de instanciamento;

  queue.addAll([
    1,
    2,
    3,
  ]);
  queue.add(55);
  queue.addFirst(100);
  queue.addLast(220);
  queue.add(775);
  print(queue);

  queue.removeLast();
  queue.removeFirst();

  print(queue.runtimeType);
  queue.forEach((e) => print(e));

  ListQueue<int> listQueue = ListQueue();

  for (var i = 0; i < 10; i++) {
    listQueue.add(Random().nextInt(10) + 1);
  }

  print(listQueue); // Queue é uma coleção  de elementos entre chaves e dinamica, que não possuem index

  listQueue.addFirst(120); // manipula o início da lista
  listQueue.addLast(300); // manipula o fim da litsa.

  for (var j = 0; j < 10; j++) {
    //print(listQueue[j]);ERRO!  não podem ser acessados por index

    print(listQueue.elementAt(j));
  }

  print('====================================================================\n');

  for (var element in listQueue) {
    print(element);
  }

  print('====================================================================\n');

  listQueue.forEach((e) => print(e));
}

import 'dart:collection';
import 'dart:math';

/**
 *  Ordenação e Remoção em Queue
Crie uma Queue<int> com valores aleatórios.

Ordene a Queue em ordem crescente.

Remova todos os números pares da fila.
 */
void main() {
  Random random = Random();
  Queue<int> valores = Queue();

  for (var i = 0; i < 10; i++) {
    valores.add(random.nextInt(10) + 1);
  }

  print('Fila original $valores\n');

  // Ordene a Queue em ordem crescente.
  final novaCollection = valores.toList();
  novaCollection.sort();

  print('Fila ordenada: $novaCollection');

  //Remova todos os números pares da fila.
  novaCollection.removeWhere((value) => value % 2 == 0);

  //convertendo de volta para Queue()
  Queue<int> novaQueue = Queue.from(novaCollection);

  print('resultado final $novaQueue');
}

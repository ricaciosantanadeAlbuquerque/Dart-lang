import 'dart:collection';
import 'dart:io';

/**
 * Crie uma Queue<String> para simular uma fila de atendimento.

Adicione 5 pessoas na fila.

Remova a primeira pessoa e exiba o próximo a ser atendido.

Exiba o tamanho da fila antes e depois do atendimento
 */
void main() {
  Queue<String> fila = Queue();

  for (var i = 0; i < 5; i++) {
    print('Digite seu nome');
    String? nome = stdin.readLineSync();
    // Adicione 5 pessoas na fila.
    if (nome != null && nome.isNotEmpty) {
      fila.add(nome);
    }
  }

  print('Fila com tamanho de ${fila.length} integrantes ${fila}');

  // Remova a primeira pessoa e exiba o próximo a ser atendido.
  fila.removeFirst();

  print('Fila com tamanho de ${fila.length} integrantes ${fila}');
  print('Tipo de estrutura de dados ${fila.runtimeType}');
}

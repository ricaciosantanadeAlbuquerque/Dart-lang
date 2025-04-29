/**
 *   Crie uma Queue<String> para simular uma fila de atendimento.
 *   Adicione 5 pessoas na fila.
 *   Remova a primeira pessoa e exiba o próximo a ser atendido.
 *   Exiba o tamanho da fila antes e depois do atendimento.
 */
import 'dart:collection';
import 'dart:io';

void main() {
  Queue<String> fila =  Queue();

  //Adicione 5 pessoas na fila.
  for (var i = 0; i < 5; i++) {
    print('Digite seu nome');
    String? nome = stdin.readLineSync();

    if (nome != null && nome.isNotEmpty) {
      fila.add(nome);
    }
  }

  print('Fila antes do atendimento\n');
  print('Quantidade de pessoas em espera na fila: ${fila.length}');
  print('Fila:$fila\n');

  print('Realizando atendimento\n');
  String atendimento = fila.removeFirst();
  print('Cliente atendido $atendimento \n');

  print('Fila após o primeiro atendimento');
  print('Quantidade de pessoas em espera na fila: ${fila.length}');
  print('Fila:$fila\n');

  if (fila.isNotEmpty) {
    print('Próximo a ser atendido  ${fila.first}');
  } else {
    print('nenhuma pessoa para ser atendida.');
  }

  print('Tipo de estrutura de dados. ${fila.runtimeType}');
}

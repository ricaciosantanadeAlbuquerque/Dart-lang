import 'dart:math';

/**
 * Treinando funções da coleção List
 * ForEach()
 * expand()
 * map()
 * every()
 * where()
 */
void main() {
  List<int> vetorInt = [];

  for (var i = 0; i < 10; i++) {
    vetorInt.add(Random().nextInt(10));
  }
  print(vetorInt);
  // mostrando cada um dos elementos Usando a função Foreach()

  vetorInt.forEach((element) {
    print(element);
  });

  print('');

  var novaListDuplicada = vetorInt.expand((element) => [element, element]).toList();

  print(novaListDuplicada);
  print('Os elementos desta lista são maiores que zero ?? ${novaListDuplicada.every((element) => element > 0) ? 'Sim' : 'Não'}');
  int cont = 0;
  novaListDuplicada.forEach((e) => print('Posição ${cont++}: $e'));

  // mapeando listas

  List<double> listaValores = novaListDuplicada.map((element) {
    return element.toDouble();
  }).toList();
  print('\n');
  listaValores.forEach((element) => print(element));

  // filtrando listas

  final listaFiltrada = listaValores.where((element) => element >= 5).toList();

  print('');

  listaFiltrada.forEach((e) => print(e));

  // Acabando com elementos redundantes
  print(listaFiltrada.length);
  print('');
  print(listaFiltrada);
  print('=================================================');
  print('');
  for (int i = 0; i < listaFiltrada.length - 1; i++) {
    print('==================${listaFiltrada[i]}+++++++++=========');
    for (var j = 1; j < listaFiltrada.length; j++) {
      print('++++++++++${listaFiltrada[j]}==============');
      if (listaFiltrada[i] == listaFiltrada[j]) {
        listaFiltrada.remove(listaFiltrada[j]);
      }
    }
  }
  print('==============================================================\n');
  print('teste');
  for (int i = 0; i < listaFiltrada.length - 1; i++) {
    print('==================${listaFiltrada[i]}+++++++++=========');
    for (var j = 1; j < listaFiltrada.length; j++) {
      print('++++++++++${listaFiltrada[j]}==============');
      if (listaFiltrada[i] == listaFiltrada[j]) {
        listaFiltrada.remove(listaFiltrada[j]);
      }
    }
  }

  //listaFiltrada.removeWhere((e) =>  e == 7);

  print(listaFiltrada);
}

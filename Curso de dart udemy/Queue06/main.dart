import 'dart:collection';
import 'dart:math';

void main(List<String> args){

  // inserindo notas na coleção

  Queue<double> notas = Queue();

  for(var index = 0; index < 10 ; index++){
     notas.add(double.parse(((Random().nextDouble() + 1 ) * index).toStringAsFixed(2)));
  }

  print('Tipo da coleção: ${notas.runtimeType}');
  print(notas);

  // filtrar as notas maiores que 7  jogue os elementos para uma lista e faça um filtragem.
  print(notas.every((e) => e > 0)); // && == true
  List<double> notasFiltradas = notas.where((e) => e > 7).toList();
  notasFiltradas.sort((b,a) => a.compareTo(b));
  print(notasFiltradas);

  // de lista filtrada mostre a maior nota 

  var maior =   notasFiltradas.reduce((anterior,atual) => (anterior > atual) ? anterior : atual);
  var menor =   notasFiltradas.reduce((anterior,atual) => (anterior < atual) ? anterior : atual);
  var soma  =   notasFiltradas.fold(0.0,(anterior,atual) =>  anterior + atual);
  print('Maior nota:${maior} Menor valor: $menor, Média: ${soma/notas.length} ');
  ListQueue<Queue<int>> listaQueue = ListQueue();
  for(var i = 0; i < 10 ; i++){
    Queue<int> queue = new Queue();
    for(var j = 0; j < 10 ; j++){
      queue.add(Random().nextInt(10));
    }
    listaQueue.add(queue);
  }

  print('');
  print(listaQueue); // ListQueue e Queue aceitam valores repetidos

  // criando uma coleção de elemntos únicos e ordenados

  SplayTreeSet<int> unicos = SplayTreeSet();

    for(var element in listaQueue){
        element.forEach((e) => unicos.add(e));
    }

    print(unicos); // SplayTreeSet elementos únicos e ordenados em crescente.

    
}
import 'dart:collection';
void main(){
 queue();
}

// ========================Queue===================
void queue(){

  Queue<int> listQ = Queue();

  print('implementação ${listQ.runtimeType}');

  listQ.addAll([1,2,3,4,5,6]);
  listQ.add(22);
  listQ.add(22);

  print(listQ); // Queue é uma coelção de elementos entre {} chaves , que aceita valores repetidos, e não possuem acesso a index.
  // Podem manipular o início e fim  da lista 

  listQ.addFirst(60);
  listQ.addLast(100);
  print(listQ);

  // removendo valores 

  listQ.remove(2);
  print(listQ);
  listQ.removeWhere((e) => e == 100);
  print(listQ);
  listQ.removeLast();
  listQ.removeFirst();
  print(listQ);

  // mostrando valores 
  
  var f = (element) => print(element);

  listQ.forEach(f);
}
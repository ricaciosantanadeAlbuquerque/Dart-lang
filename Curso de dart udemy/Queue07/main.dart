import 'dart:collection';
void main(){
 ListQueue<int> listQueue =  new ListQueue();
 Queue<int> queue = new Queue();

 for(var i = 0; i < 10;i++){
   listQueue.addFirst(i);
   queue.addLast(i);
 }

 print(listQueue);
 print(queue);

 listQueue.addFirst(200);
 listQueue.addLast(200);
 queue.add(222);
 queue.addLast(222);

 print('');
 print(listQueue);
 print(queue);

  //for(var j = 0; j < 12;j++){
   // listQueue.removeLast();
 // }



  print('');
  print(listQueue);

  Set<int> num1 = new Set();
  Set<int> num2 = new Set();

  num1.addAll(listQueue);
  num2.addAll(queue);

  print(num1);
  print(num2);


  SplayTreeSet<int> num3 = new SplayTreeSet(); // não aceita valores redundantes
  num3..addAll(num1)..addAll(num2);

  print(num3);

  print('Diferencial: ${num1.difference(num2)}');
  print('União ${num1.union(num2)}'); // justa os elementos das duas coleções set e sem valores redundantes
  print('Intercessão ${num1.intersection(num2)}');
  print('Pegando valores ${num1.lookup(5)}');

  Queue<int> num5 = Queue();
  num5.addAll(num3);
  print('Lista possui valores maiores que 0 ${num5.every((e) => e > 0)}');

  final iterable = num5.where((e) => e > 0);

  print(iterable.runtimeType);
  print(iterable);

   List<int> lista  = iterable.map((e) => e).toList();

   print(lista);
}
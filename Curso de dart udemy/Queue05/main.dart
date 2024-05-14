import 'dart:collection';
import 'dart:math';

void main(){
  ListQueue<int> listQueue = ListQueue();

  listQueue.add(20);
  listQueue.addAll([15,25,35,55,85,99,]);
  listQueue.addFirst(350);
  listQueue.addLast(3450);
  listQueue.addFirst(350);
  listQueue.addLast(3450);

  listQueue.forEach((e) => print( e ));

  Queue<int> num1 = Queue();

  for(var j = 0; j < listQueue.length;j++){
     num1.addFirst(listQueue.elementAt(j));
  }

  print(listQueue);
  print(num1);

  Set<int> num2 = {25,26,33,45,88,75,35,3450,350};

  SplayTreeSet<int> num3 = SplayTreeSet();

  num3..addAll(listQueue)..addAll(num2);

  print(num3);

  // coleções do tipo Set HashSet e SplayTreeSet não podem ser acessados por index ee não podem conter valores duplicados

  HashSet<int> num4 = HashSet();

  for(var i = 0; i < 10 ; i++){
    num4.add(Random().nextInt(10));
  }

  print('');
  print('');

  List<int> listValores = [];

  listValores = num4.expand((e){ return [e,e];}).toList();
  print(num4);
  print(listValores);

 listValores.removeWhere((e) => e == e);

  print(listValores);
}


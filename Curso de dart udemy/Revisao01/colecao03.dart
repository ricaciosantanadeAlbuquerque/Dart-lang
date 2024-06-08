import 'dart:collection';

void main(List<String> args){
  List<int> numero = [1,2,3,4,5,6];
  numero.insert(0,1500);
  numero.addAll([55,650,400]);
  
numero.forEach((e) => print(e));
print('');
 var array = [88,99,110];
numero.addAll([...array]);
print(numero);

// set 

Set<int> setNumero = {...numero}; // operador ... Spread ou espalhar

print(setNumero.runtimeType);
print('');
print(setNumero);

// hashSet

HashSet<int> hashSet = HashSet();

for(var element in setNumero){
  hashSet.add(element);
}
print(hashSet);
// ordenando com splayTreeSet
SplayTreeSet<int> splayTreeSet = SplayTreeSet();

 splayTreeSet.addAll(hashSet);
 print('');
 print(splayTreeSet);


// Iterando sobre cada coleção com for

for(var i = 0; i < splayTreeSet.length;i++){

  print(numero[i]);
  print(setNumero.elementAt(i));
  print(hashSet.elementAt(i));
  print(splayTreeSet.elementAt(i));

}

Queue<int> queue = Queue();
queue.addAll(splayTreeSet);
print('');
print(splayTreeSet);

ListQueue<int> listQueue = ListQueue();
listQueue.addAll(queue);
print('');
print(listQueue);

listQueue.addFirst(5450);
listQueue.removeLast();

print('');
print(listQueue);

for(var j = 0;  j < listQueue.length;j++){
  listQueue.removeLast();
  listQueue.removeFirst();
}

print('');
print(listQueue);
/**
 * List<>
 * Set<>
 * HashSet
 * SplayTreeSet<>
 * Queue<>
 * ListQueue<>
 */

}
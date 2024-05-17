import 'dart:collection';

/** Faça um algoritmo para ler uma Queue com 10 elementos e inverter a posição destes 
elementos, de tal modo que o primeiro elemento venha a ser o último, depois da 
inversão;
 */

void main(List<String> args){

Queue<int> queue = Queue();

queue.addAll([1,2,3,4,5,6,7,8,9,10]);
 print(queue);
 queue.clear();
for(var i = 10; i > 0 ; i--){
   queue.addLast(i);
}

print(queue);

// passando esses valores para uma coleção Set

Set<int> listSet = Set();
listSet.addAll(queue);

print('');

print(listSet);

// passando para uma lista

List<int> list = [];

list.addAll(listSet);

list.sort();
print('');
print(list);

}
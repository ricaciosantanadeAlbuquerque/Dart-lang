import 'dart:collection';

void main(List<String> args){
   queue();
}


void queue(){

Queue<int>  numeros = Queue();
Queue<String> nomes = Queue();
Queue<double> valores = Queue();


numeros.addAll([10,20,30,40,50]);
numeros.add(75);
numeros.addFirst(250);
numeros.addLast(500);

nomes.addAll(['Ana','Dora','Carmem','Louder']);
nomes.add('Biza');
nomes.addFirst('Ricacio');
nomes.addLast('Lucas');

valores.addAll([1670,1500,1412,500,1540,1412]);
valores.add(6775);
valores.addFirst(7500);
valores.addLast(150000);
 
// for
print('');
for( var i = 0; i < numeros.length;i++){
  print('for ${numeros.elementAt(i)}');
}

// for in
print('');
for(var element in nomes){
  print('for in ${element}');
}

// forEach()
print('');
valores.forEach((e) => print('forEach: $e'));

print('Numeros: ${numeros}');


Queue<int> pilha = Queue();

print('Implementação ${pilha.runtimeType}');

for(var i = 0; i < 10 ; i++){
  pilha.addFirst(i);
  print(pilha.elementAt(i));
}
print(pilha);
print('');

for(var j = 0; j < 10 ; j++){
  //pilha.removeWhere((e) => e == pilha.elementAt(j));
  pilha.removeLast();
  //print(pilha.elementAt(j));
}

print(pilha);

nomes.clear();
print(nomes);

print(valores.isEmpty);
print(valores.isNotEmpty);

print('Soma dos valores usando o reduce: ${valores.reduce((anterior,atual) => anterior + atual)}');
print('Somando valores com fold() ${valores.fold(0.0,(anterior,atual) => anterior + atual)}');


ListQueue<double> num2 = ListQueue();

num2.addAll(valores);

print(num2);
print(num2.runtimeType);

SplayTreeSet<double> ordem = SplayTreeSet();
ordem.addAll(num2);
print(ordem);
print(ordem.runtimeType);

// Queue é uma coleção dinamica de elementos entre chaves {}, que não possuem acesso por index e manipulão oinício e fim da lista.


}
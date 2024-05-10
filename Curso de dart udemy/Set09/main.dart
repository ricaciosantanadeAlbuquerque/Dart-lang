import 'dart:collection';
import 'dart:math';

void main(List<String> args){
  SplayTreeSet<int> lista = new SplayTreeSet();
  SplayTreeSet<int> lista02 = new SplayTreeSet();

  

  for(var i = 25; i >= 0; i--){
    lista.add(i);
  }
  
  print(lista);

  /**
   * Mesmo colocando os elementos em ordem de inserção decrescente a Coleção SplayTreeSet organiza os elemento em ordem crescente.
   * SplayTreeSet é uma coleção de elementos únicos e organizados em ordem crescente do menor para o mairo, não aceita valores null,
   * Não podem ser acessados por index []
   * 
   */

  for(var i = 0; i < 25; i++){
    lista02.add(Random().nextInt(100) + 1);
  }

  print('');

  print(lista02);

  print('');

  // métodos =====================================================================

  print(lista.difference(lista02));
  print(lista.union(lista02));
  print(lista.intersection(lista02));
  print(lista.lookup(6));

  lista.forEach((e) => print('forEach: $e'));
  // ============================Set do tipo List de int
  Set<List<int>> num1 = Set();
  num1.add([1,2,3]);
  num1.add([4,5,6]);
  num1.add([7,8,9]);
  num1.add([10,11,12]);
  num1.add([13,14,15]);

  print(num1);
  int cont0 = 0;
  int cont1 = 0;
  for(var  vetor in num1){
    cont0++;
    print('------${cont0}');
    vetor.forEach((e){
      cont1++;
      print(cont1);
      //print(e);
    });
  }
}
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
}
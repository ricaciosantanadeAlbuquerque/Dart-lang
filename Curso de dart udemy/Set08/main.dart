import 'dart:collection';
import 'dart:math';

void main(List<String> rags){
  HashSet<int> listaHashSet = HashSet();

  for(var i =0; i < 25 ; i++){
      listaHashSet.add(i);
  }
  /**
   * Embora a inserção de dados na coleção HashSet de nome "listaHashSet", seja feita em ordem crescente, Tudo ficará desordenado
   * Já que está coleção e conhecida por embaralhar seus elemento.   
   */

  print(listaHashSet);
  
  print('');

  // mostrando cada elemento

  for(var element in listaHashSet){
     print(element);
  }


HashSet<int> listaHashSet02 = HashSet();

  for(var j = 0; j < 25 ; j ++){
     listaHashSet02.add(Random().nextInt(25));
  }

  print(listaHashSet);
  print(listaHashSet02);
  print('A diferença entre a listaHashSet e listaHashSet02 ${listaHashSet.difference(listaHashSet02)}\n');
  print('A união das listaHashSet0 e listaHashSet02 ${listaHashSet.union(listaHashSet02)}\n');
  print('intercessão entre listaHashSet e listaHashSet02 ${listaHashSet.intersection(listaHashSet02)}\n');
  print('Buscando elemento na listaHashSet ${listaHashSet.lookup(5)}');

  print('----------------------------------------String---------------------------------------');

  HashSet<String> letra = new HashSet();

  letra.add('A');
  letra.add('B');
  letra.add('C');
  letra.add('D');

  print(letra);
}
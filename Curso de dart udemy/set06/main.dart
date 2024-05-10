import 'dart:collection';
import 'dart:math';

void main(List<String> args) {
  linkedHashSet();
  print('');
  hashSet();
  print('');
  splayTreeSet();
}

/// Set é uma coleção de elementos únicos e ordenados entre chaves, que Segue a ordem de inserção, e não podem ser acessados por index [].

void linkedHashSet() {
  Set<int> listSet = Set();
  print('Tipo da coleção ${listSet.runtimeType}');
  // listSet[0] = 12; ERRO!!! Coleções set não aceitam acesso por index

  listSet.add(20);
  listSet.add(22);
  listSet.add(23);
  listSet.add(23);
  listSet.add(20); // set é uma coleção de elementos únicos, não aceitando dados redundantes.

  print('listSet: ${listSet}');

  listSet.remove(20);
  print('');
  print('listSet: ${listSet}');

  // for

  for (var i = 0; i < listSet.length; i++) {
    //print(listSet[i]); ERRO!! não é possível fazer acesso a coleções Set por index []
    print('for ${listSet.elementAt(i)}');
  }

  print('');

  for (var element in listSet) {
    print('for in ${element}');
  }

  print('');

  listSet.forEach((e) {
    print('forEach ${e}');
  });

  // testando métodos da coleção set

  Set<int> listNum1 = {1, 2, 3, 4, 5};
  Set<int> listNum2 = {4, 5, 6, 7, 8};

  print(listNum1.difference(listNum2)); // difference == diferença
  print(listNum1.union(listNum2)); // union == união
  print(listNum1.intersection(listNum2)); // intersection == intercessão
  print(listNum1.lookup(3)); // se o elemento existir na coleção set então ele será retornado. Se não retorna null
  print(listNum2.lookup(10));
}

/// HashSet é uma coleção de elementos únicos e desordenados entre chaves {} que não podem ser acessados por index []

void hashSet() {
  HashSet<String> hashSet01 = HashSet();
  hashSet01.add('A');
  hashSet01.add('B');
  hashSet01.add('C');

  print(hashSet01);

  HashSet<int> hashSet02 = HashSet();
  hashSet02.add(1);
  hashSet02.add(2);
  hashSet02.add(3);

  print('');

  print(hashSet02); // caso a coleção do tipo HashSet seja tipada como <int>  e só tenha valores com uma casa decimal, então será respeitada a ordem de inserção

  HashSet<int> hashSet03 = HashSet();

  hashSet03.add(11);
  hashSet03.add(22);
  hashSet03.add(33);

  print('');
  print(hashSet03);

  for (var i = 0; i < hashSet01.length; i++) {
    print(hashSet01.elementAt(i));
  }

  print('-----------------------------------------------------------\n');

  for (var element in hashSet02) {
    print(element);
  }

  print('-----------------------------------------------------------\n');


  hashSet03.forEach((e) => print( e ));

  print('---------------------Métodos----------------------');

  print(hashSet02.difference(hashSet03));
  print(hashSet02.union(hashSet03));
  print(hashSet02.intersection(hashSet03));
  print(hashSet02.lookup(5));
  print(hashSet03.lookup(33));
}
 /// SplayTreeSet organiza automaticamente os elementos em ordem crescente
 /// por ser uma arvore de comparações não aceita valores null
 /// não pode ser acessado por index []
 
void splayTreeSet() {

  SplayTreeSet<int> listaNumeros = new SplayTreeSet();

  SplayTreeSet<int> listaNumeros02 = SplayTreeSet();

  for(var j = 0; j < 10; j++){
     listaNumeros.add(Random().nextInt(10) + 1);
     listaNumeros02.add(Random().nextInt(20) + 1);
  }

  print(listaNumeros);

  print(listaNumeros02);

  print('');

  print('Diferença entre listaNumeros para listaNumeros02 ${listaNumeros.difference(listaNumeros02)}');
  print('A união da listaNumeros com a listaNumeros02 ${listaNumeros.union(listaNumeros02)}');
  print('Numeros  em comum nas duas lista ${listaNumeros.intersection(listaNumeros02)}');
  print('Buscando valores na coleção splayTreeSet ${listaNumeros02.lookup(5)}');

}

void main(List<String> args){
   linkedHashSet();
}

/// Set é uma coleção de elementos únicos e ordenados entre chaves, que Segue a ordem de inserção, e não podem ser acessados por index [].

 void linkedHashSet(){

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

  for(var i = 0; i < listSet.length; i++){
    //print(listSet[i]); ERRO!! não é possível fazer acesso a coleções Set por index []
    print('for ${listSet.elementAt(i)}');
  }

  print('');

  for(var element in listSet ){
     print('for in ${element}');
  }

  print('');

  listSet.forEach((e){
    print('forEach ${e}');
  });

  // testando métodos da coleção set

  Set<int> listNum1 =  {1,2,3,4,5};
  Set<int> listNum2 = {4,5,6,7,8};

  print(listNum1.difference(listNum2)); // difference == diferença
  print(listNum1.union(listNum2)); // union == união
  print(listNum1.intersection(listNum2)); // intersection == intercessão
  print(listNum1.lookup(3)); // se o elemento existir na coleção set então ele será retornado. Se não retorna null
  print(listNum2.lookup(10));
}


void hashSet(){

}

void splayTreeSet(){

}

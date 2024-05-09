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
  }
}


void hashSet(){

}

void splayTreeSet(){

}

import 'dart:math';

void main(){

  Set<int> lista01 = Set();

  for(var i = 0; i < 10;i++){
    lista01.add(Random().nextInt(10));
  }

  lista01.forEach((e) => print(e));

  Set<int> lista02 = Set();

  for(var j = 0; j < 10 ; j++){
    lista02.add(Random().nextInt(20) + 1);
  }

  print('');

  lista02.forEach((e) => print(e));

  print(lista01);
  print(lista02);

  print('=================Métodos==================');
  print(lista01.difference(lista02));
  print(lista01.union(lista02));
  print(lista01.intersection(lista02));
  print(lista01.lookup(4));
  
}
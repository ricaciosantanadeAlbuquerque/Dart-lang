import 'dart:collection';
import 'dart:math';

/// Set é uma coleção de elementos únicos entre chaves {}. Não podem ser acessado por por index.
/// Set é uma coleção de elementos únicos entre chaves {} que não são acessados por index.
void main(List<String> args) {
  Set<int> setInt = {};

  //setInt[0] = 13; //Não temos acesso por index

  setInt.add(13);
  print(setInt.runtimeType); // Set<int>

  // add valor 13
  setInt.add(13);

  //não aceita valores duplicados
  print(setInt);

  //setInt.add(null);  não aceita valores null ?

  setInt.add(17);
  setInt.add(17);

  print(setInt); // como vimos  set é uma coleção de valores únicos, Não aceitando valores redundantes

  // iteração com for
   print('');
  for(var i = 0; i < setInt.length;i++){
    //print('for ${setInt[i]}'); // ERRO! não podemos acessar os valores da coleção por index
    print('for ${setInt.elementAt(i)}');
  } 

  // for in
  print('');
  for(var item in setInt){
    print('for in ${item}');
  }

  // forEach()

  print('');
  setInt.forEach((e) => print('forEach ${e}'));


  Set<int> listaSet = {};
  Set<int> num1 = {1,2,3,4,5,6,7,8,9,10};
  
  for(var i = 0; i < 10;i++){
    listaSet.add(Random().nextInt(10) + 1);
  }

  print('');
  print(listaSet);
  print('');
  print(num1);

  // Set é uma coleção de elementos únicos entre chaves que não pode ser acessados por index.

  Set<double> num2 = {1.5,2.0,3.3,4.4,5.7};
  Set<double> num3 = {3.3,4.4,6.0,7.1,8};

  // métodos  da coleção set
  print('');
  print('difference: ${num2.difference(num3)}');
  print('union: ${num2.union(num3)}');
  print('intersection: ${num2.intersection(num3)}');

  


  
}

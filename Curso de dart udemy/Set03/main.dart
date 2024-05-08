import 'dart:collection';
import 'dart:math';

/// Set é uma coleção de elementos únicos entre chaves {}. Não podem ser acessado por por index.
/// Set é uma coleção de elementos únicos entre chaves {} que não são acessados por index.
void main(List<String> args) {
  Set<int> setInt = {};
  Set<double> setDouble = Set();

  setDouble.add(5.0);
  setDouble.add(10);
  setDouble.add(7.7);
  setDouble.add(8.8);
  setDouble.add(5.0);
  print(setDouble);
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
  for (var i = 0; i < setInt.length; i++) {
    //print('for ${setInt[i]}'); // ERRO! não podemos acessar os valores da coleção por index
    print('for ${setInt.elementAt(i)}');
  }

  // for in
  print('');
  for (var item in setInt) {
    print('for in ${item}');
  }

  // forEach()

  print('');
  setInt.forEach((e) => print('forEach ${e}'));

  Set<int> listaSet = {};
  Set<int> num1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  for (var i = 0; i < 10; i++) {
    listaSet.add(Random().nextInt(10) + 1);
  }

  print('');
  print(listaSet);
  print('');
  print(num1);

  // Set é uma coleção de elementos únicos entre chaves que não pode ser acessados por index.

  Set<double> num2 = {1.5, 2.0, 3.3, 4.4, 5.7};
  Set<double> num3 = {3.3, 4.4, 6.0, 7.1, 8};

  // métodos  da coleção set
  print('');
  print('difference: ${num2.difference(num3)}');
  print('union: ${num2.union(num3)}');
  print('intersection: ${num2.intersection(num3)}');

  print('---------------------HashSet----------------------');

  /// Coleção de valores únicos e desordenados, que não podem ser acessados por index []
  HashSet<String> listaHashSet = HashSet();
  listaHashSet.add('info');
  listaHashSet.add('info01');
  listaHashSet.add('info02');
  listaHashSet.add('info03');

  print('HashSet: ${listaHashSet}'); // na coleção HashSet os valores ficam desordenados

  /// valores inteiros com uma casa decimal ficam ordenados
  HashSet<int> num1HashSet = HashSet();
  num1HashSet.add(1);
  num1HashSet.add(2);
  num1HashSet.add(3);

  HashSet<int> num2HashSet = new HashSet();

  /// Valores  inteiros com duas casas Decimais ficam desordenados
  ///
  num2HashSet.add(11);
  num2HashSet.add(12);
  num2HashSet.add(13);
  print('');
  print(num1HashSet);
  print('');
  print(num2HashSet);

  HashSet<int> num3HashSet = HashSet();
  num3HashSet.add(11);
  num3HashSet.add(10);
  num3HashSet.add(14);

  print('---------------------------Test-----------------------------\n');

  print('Diferença:${num2HashSet.difference(num3HashSet)}'); // num2HashSet tem  de diferente 12 13
  print('União ${num2HashSet.union(num3HashSet)}'); // junta as duas coleções HashSet
  print('intercessão ${num2HashSet.intersection(num3HashSet)}'); // mostra o que é comum as duas



/// SplayTreeSet organiza os elementos em ordem automaticamente e em ordem crescente. Não pode ser acesso por index nem aceita valores null

SplayTreeSet<int> splayTreeSet = SplayTreeSet();

// adicionando os valores de forma aleatória;

for(int j = 0; j < 12;j++){
  splayTreeSet.add(Random().nextInt(10));
}

print(splayTreeSet); 

SplayTreeSet<double> jj = new SplayTreeSet();
jj.add(10.5);
jj.add(1.0);
jj.add(55);

print('');
print(jj);

// veja que os valores são organizados em ordem crescente automaticamente. 

}

import 'dart:collection';

void main() {
  Set<int> num1 = Set(); // ordem de inserção de dados
  HashSet<int> num2 = HashSet(); // embaralados
  SplayTreeSet<int> num3 = SplayTreeSet(); // ordena os elementos automaticamente em ordem crescente

  for (var j = 25; j >= 0; j--) {
    num1.add(j);
    num2.add(j);
    num3.add(j);
  }

  print(num1);
  print('');
  print(num2);
  print('');
  print(num3);

  // métodos
  print('----------------------Métodos----------------------');
  print(num1.difference(num2));
  print(num1.union(num2));
  print(num1.intersection(num2));
  print(num1.lookup(10));
  print('----------------------Métodos----------------------');
  print(num1.union(num3));

  Set<int> test = Set();
  test.addAll([1,2,3,4,5]);

  print(test);


  
}

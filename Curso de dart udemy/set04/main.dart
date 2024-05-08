import 'dart:collection';

void main(){
  Set<int> num1 = {};
  HashSet<int> num2 = HashSet();
  SplayTreeSet<int> num3 = SplayTreeSet();

  for(var i =11; i < 20; i++){
    num1.add(i);
    num2.add(i);
    num3.add(i);
  }

  print(num1);
  print(num2);
  print(num3);


  Set<String> nomes = Set();

  nomes.add('Ana');
  nomes.add('ricacio');
  nomes.add('Lucas');

  print('');
  print(nomes);

  print('');

  HashSet<String> lojas = HashSet();
  lojas.add('Americanas');
  lojas.add('magalu');
  lojas.add('Riachuelo');
  lojas.add('Buger King');

  print(lojas);

  HashSet<double> xy = new HashSet();
  xy.add(11);
  xy.add(22);
  xy.add(33);

  print(xy);

  SplayTreeSet<double> xj = SplayTreeSet();
  xj.addAll(xy);

  print('');
  print(xj);
}
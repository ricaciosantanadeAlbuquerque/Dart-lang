// set é uma colação de elementos únicos e ordenados entre chaves {}. e não tem acesso por index
// set é uma coleção de elementos únicos e ordenados entre chaves {}. e não tem  acesso por index
import 'dart:collection';

void main(List<String> args){
  Set<int>? listaValor1 = {1,2,3,4};
  Set<String>? listaValor2 = {'valor','valor1','valor2','valor3','valor4'};
  
 // listaValor1[0] = 9;

 listaValor1.add(13);
 listaValor1.add(13);
 listaValor1.add(0);
 listaValor1.add(17);
 listaValor2.add('valor5');
 listaValor2.add('valor5');

 print(listaValor1);

 print('');

 listaValor1.remove(13);

  for(var i = 0; i < listaValor1.length;i++){
       print(listaValor1.elementAt(i));
  }
  print('');
  print('------------------in----------------------');
  print('');
  for(var item in listaValor1){
     print(item);
  }

  print('');
  print('------------------forEach()----------------------');
  print('');

  listaValor1.forEach((e) => print( e));



 print(listaValor1);
 LinkedHashSet

 Set<int> num1 = {1,2,3,4,5};
 Set<int> num2 = {4,5,6,7,8};

  print('');
 print( num1.difference(num2));
 print(num1.union(num2));
 print(num1.intersection(num2));
}
import 'dart:collection';
import 'dart:math';

void main(List<String> args){
 linkedHashSet();
 print('-----------------------------------------------------------');
 hashSet();
 print('------------------------------------------------------------');
 splayTreeSet();
}


// set é uma coleção de elementos únicos e organizados entre chaves {}, que não podem ser acessados por index []

void linkedHashSet(){

  Set<int> num1 = Set();

  // adicionando elementos a coleção set

  num1.add(13);
  num1.add(13);
  num1.add(17);
  num1.add(17);
  print(num1.runtimeType);
  print('Exibindo a colação set ${num1}'); // veja que a coleção não aceita valores repetidos.

  for(var i = 0; i < num1.length ; i++){
    //print(num1[i]); Coleções set  não podem ser acessadas por index
    print('for: ${num1.elementAt(i)}'); // para exibir os valores da coleção set<int>  use o método elementAt() + a variável de controle
  } 

  print('');

  for(var j in num1){
    print('for in ${j}');
  }

  print('');

  num1.forEach((e) => print('forEach(): ${e}'));

// funções da coleção set ----------------------------------------------------------------------------
/// Coleções Set, tem seus elementos agrupados entre chaves separados por ,

 Set<int> num2 = {1,2,3,4,5};
 Set<int> num3 = {4,5,6,7,8};

 print(num2.difference(num3)); // a diferença de num2 para num3
 print(num2.union(num3)); // união das coleções num2 e num3
 print(num2.intersection(num3)); // intercessão de num2 e num3 
 print(num2.lookup(5)); // busca um elemento na coleção, se existir então ele retorna o elemento se não retorna null
 print(num2.lookup(6));  // retorna null
}

// HashSet é uma coleção de elementos únicos e desordenados agrupados entre chaves {}. Quenão podem ser acessados por index

void hashSet(){
 
 HashSet<String> hashSet01 = new HashSet();
 hashSet01.add('A');
 hashSet01.add('B');
 hashSet01.add('C');
 hashSet01.add('D');

 print(hashSet01);

HashSet<int> hashSet02 = new HashSet();

hashSet02.add(1);
hashSet02.add(2);
hashSet02.add(3);

print('');
print(hashSet02);
print('');

HashSet<int> hashSet03 = new HashSet();

hashSet03.add(11);
hashSet03.add(22);
hashSet03.add(33);

print(hashSet03);
// uma caracteristica da coleção HashSet é que seus elementos são desorganizados.
}

// SplayTreeSet é uma coleÇão de elementos únicos entre chaves {} que se organiza automaticamente e não aceita valores null e nem pode ser acessado por index.

void splayTreeSet(){
SplayTreeSet<int> splayTreeSet01 = new SplayTreeSet();
print(splayTreeSet01.runtimeType);

// gerando valores aleatórios para  splayTreeSet01
  for(var j = 0; j < 100; j++){
    splayTreeSet01.add(Random().nextInt(100) + 1);
  }

  // mostrando a lista 
  print('splayTreeSet01: ${splayTreeSet01}');

  /**
   * Como vimos a coleção SplayTreeSet tem a capacidade de se organizar por si só, já que é uma arvore de comparações.
   * PS!!! SplayTreeSet não aceita valores null
   */

  for(var i = 0; i < splayTreeSet01.length;i++){
    print(splayTreeSet01.elementAt(i));
  }
  print('------------------------------');

  for(var element in splayTreeSet01){
      print(element);
  }

  print('------------------------------');

  splayTreeSet01.forEach((e) => print( e));


  SplayTreeSet<String?> args = SplayTreeSet();

  args.add('c');
  args.add('A');
  args.add('B');
 // args.add(null); não se pode adicionar elementos null para uma coleção SplayTreeSet

  args.forEach((e)=> print(e)); // como vimos  a coleção SplayTreeSet organiza os elementos automaticamente.

}
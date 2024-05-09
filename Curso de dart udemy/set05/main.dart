void main(List<String> args){
 linkedHashSet();
}



void linkedHashSet(){

  Set<int> num1 = Set();

  // adicionando elementos a coleção set

  num1.add(13);
  num1.add(13);
  num1.add(17);
  num1.add(17);

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

}
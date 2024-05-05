void main(){
  Set<double> num1 = {};
  num1.add(5.0);
  num1.add(10.5);
  num1.add(5.5);
 num1.add(5.0);

 print(num1);

 num1.remove(5.0);

 for(var j = 0; j  < num1.length;j++){
    print('for ${num1.elementAt(j)}');
 }

  print('');

 for(var item in num1){
  print(item);
 }

 print('');

 num1.forEach((e) => print(e));

 Set<int> num2 = {1,2,3,4,5,};
 Set<int> num3  = {3,4,5,6,7};

 print(num2.difference(num3));
 print(num2.union(num3));
 print(num2.intersection(num3));

}
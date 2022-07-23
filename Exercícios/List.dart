void main() {
  List<int> num1 = [];

  for (int i = 0; i < 100; i++) {
    num1.add(i);
  }
  /* for (int j = 0; j < num1.length; j++) {
    print(num1[j]);
  }*/

  print(num1[0]);
  print(num1);
  print(num1.length); // length tamanho de um array ou List etc
  num1.removeAt(99); // removeAt() remove um valor
  print(num1);
  num1.insert(99, 99); // insert(posição,valor)
  print(num1);
  print(num1.contains(80)); // contains() contem ?
  print(num1.isEmpty); // isEmpty é vazio ?
  print(num1.getRange(1, 80));//  pegue o intervalo de valores que vai de 1 a 79

}

import 'dart:io';

void main() {
  List<int> array = [];
  while (array.length < 6) {
    print("Digite um valor ");
    String? valor = stdin.readLineSync();
    int num1 = int.parse(valor!);
    if (num1 % 2 == 0) {
      array.add(num1);
    } else {
      //print("Esse valor não é par ${num1}");
      continue;
    }
  }
  for (int j = 5; j >= 0; j--) {
    print("Os valores pares são ${array[j]}");
  }
}

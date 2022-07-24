import 'dart:io';

void main() {
  int num1 = 1;
  int cont = 0;
  while (num1 != 0) {
    print("Digite um valor numérico");
    String? num = stdin.readLineSync();
    num1 = int.parse(num!);
    if (num1 == 2) {
      cont += 1; // cont = cont + 1 ou  cont++
    }
  }
  print("Aquantidade de números iguais a 2 é [${cont}]");
}

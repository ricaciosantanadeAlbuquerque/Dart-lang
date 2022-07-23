import 'dart:io';

void main() {
  int cont = 0;
  int num = 1;
  while (num != 0) {
    print("Digite um número");
    String? num1 = stdin.readLineSync();
    num = int.parse(num1!);
    if (num == 2) {
      cont++;
    }
  }
  print("A quantidade de numeros iguais a 2 é de ${cont}");
}

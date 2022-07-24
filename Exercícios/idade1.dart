import 'dart:io';

void main() {
  int cont = 0;
  String? idade;
  for (int i = 0; i < 10; i++) {
    print("Digute sua idade por favor !");
    idade = stdin.readLineSync();
    int idade1 = int.parse(idade!);
    if (idade1 >= 0 && idade1 <= 12) {
      cont++;
    }
  }
  print("A quantidade de pessoas com a idade entre 0 e 12 é de [${cont}]");
}

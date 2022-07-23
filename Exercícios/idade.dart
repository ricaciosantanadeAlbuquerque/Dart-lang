import 'dart:io';

void main() {
  int cont = 0;
  for (int i = 0; i < 10; i++) {
    print("Digite sua idade");
    String? entrada = stdin.readLineSync();
    int idade = int.parse(entrada!);
    if (idade >= 0 && idade <= 12) {
      cont = cont + 1;
    }
  }
  print("A quantidade de pessoas com a idade entre 0 e 12 é de ${cont}");
}

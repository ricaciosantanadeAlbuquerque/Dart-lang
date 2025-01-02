import 'dart:io';

void main() {
  List<String> nomes = [];

  for (var i = 0; i < 5; i++) {
    print('Digite um nome !');
    String? entradaNome = stdin.readLineSync();
    if (entradaNome != null) nomes.add(entradaNome);
  }

  print(nomes);

  nomes.sort();
  print('');
  print(nomes);
}

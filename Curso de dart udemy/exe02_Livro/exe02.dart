import 'Dart:io';

/**
 * Faça um programa que recebe 4 idades e mostra a menor e a maior idade entre elas 
 */
void main(List<String> args) {
  int menor = 1000000;
  int maior = 0;
  List<int> idades = [];
  for (var i = 0; i < 4; i++) {
    // 0 1 2 3
    print("Digite sua idade por favor");
    String? entrada = stdin.readLineSync();
    int idade = int.parse(entrada!); // ! estou informando ao compilador que entrada não é nula.

    idades.add(idade); // a lista idades guardará todas as idades

    if (idade > maior) {
      maior = idade; // maior guardará o maior valor
    }

    if (idade < menor) {
      menor = idade; // e menor guardará o menor valor
    }
  }
  print(idades);
  print("A maior idade é ${maior}");
  print("A menor idade é ${menor}");
}

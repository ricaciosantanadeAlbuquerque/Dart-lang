import 'dart:io';

/**
 *  Crie um programa que recebe 10 números por meio do stdin.readLineSync(), armazene esses valores em um array
 *  apresente em tela a soma do maior valor e menor valor.
 */

void main() {
  List<int> numeros = [];
  int maior = 0;
  int menor = 10000000;
// preenchendo o array =====
  for (var i = 0; i < 10; i++) {
    print("Digite um núnmero por favor ");
    String? entradaNum = stdin.readLineSync();

    if (entradaNum != null) {
      if (entradaNum.isNotEmpty) {
        int num1 = int.parse(entradaNum);
        numeros.add(num1);
      } else {
        print('Vazio');
      }
    }
  }
  print(numeros);

// busca no array

  for (var j in numeros) {
    if (j > maior) {
      maior = j;
    }

    if (j < menor) {
      menor = j;
    }
  }
  print('Soma do maior valor [$maior], e do menor valor [$menor] \n');
  print('Soma:${maior + menor}');
}

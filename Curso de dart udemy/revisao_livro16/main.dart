import 'dart:io';
import 'dart:math';

/**
 * Faça um programa que gera de forma aleatória 1000 números inteiros quaisquer e os armazene em uma lista,
 * em seguida, peça para o usuário digitar qual o número ele está a procurar. Faça uma busca no array e mostre 
 * uma mensagem se o valor   existe ou não.
 */
void main() {
  List<int> numeros = [];

// preenchendo a lista
  for (var i = 0; i < 10; i++) {
    numeros.add(Random().nextInt(10 + 1));
  }

  print(numeros);
  print('');

  print('Digite o valor que você busca !!!\n');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int valorEntrada = int.parse(entrada);
    bool achou = false;
    int? caixa;
    int cont = 0;

    for (var valor in numeros) {
      print(valor);
      if (valor == valorEntrada) {
        achou = true;
        caixa = valor;
        cont++; // assim posso não só saber o valor masssss quantas vezes ele existe dentro do array
      }
    }

    if (achou == true) {
      print('');
      print("O valor foi encontrado $caixa, e ele ocorre $cont vezes.\n");
    } else {
      print('');
      print('O valor não existe !!!\n');
    }
  }
}

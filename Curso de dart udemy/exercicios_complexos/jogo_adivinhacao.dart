import 'dart:io';
import 'dart:math';

void main() {
  int valorDaSorte = Random().nextInt(100) + 1;
  int numeroSorte = 0;
  print(valorDaSorte);

  do {
    print('Digite seu valor da sorte');
    String? entradaSorte = stdin.readLineSync();

    if (entradaSorte != null && entradaSorte.isNotEmpty) {
      try {
        numeroSorte = int.parse(entradaSorte);
        if (numeroSorte < valorDaSorte) {
          print('Hummm quase!! O valor é um pouco maior ):');
          print('Tente novamente.\n');
          continue;
        } else {
          print('Hummmmmm quase!! O valor é um pouco menor ):');
          print('Tente novamente.\n');
          continue;
        }
      } catch (e) {
        print('O valor $e não é um número.');
      }
    } else {
      print('ERRO ! Digite valores válidos');
    }
  } while (valorDaSorte != numeroSorte);

  print('Parabéns ! você ganhou o jogo. ');
  print('==============FIM JOGO================');
}

/**
 *  Faça um programa que sorteie 6 números entre 1 e 60.
 */
import 'dart:math';

void main() {
  for (var i = 0; i < 6; i++) {
    var aleatorio = Random().nextInt(60) + 1; // irá gerar valores entre 1 e 6
    print("Os 6 valores entre 1 e 60 são ${aleatorio}");
  }
}

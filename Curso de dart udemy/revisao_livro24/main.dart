import 'dart:math';

/**
 * Faça um Programa que leia dois vetores com 10 elementos cada. Gere um terceiro vetor de 20 elementos, cujos valores deverão ser compostos pelos elementos dois outros vetores.
 */
void main() {
  List<int> numeroA = [];
  List<int> numeroB = [];

  for (var i = 0; i < 10; i++) {
    numeroA.add(Random().nextInt(100));
    numeroB.add(Random().nextInt(100));
  }
  print(numeroA);
  print('');
  print(numeroB);

  List<int> numeroC = numeroA + numeroB;

  print(numeroC.length);
  print('');
  print(numeroC);
}

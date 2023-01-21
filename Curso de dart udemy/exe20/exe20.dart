//8. Faça um procedimento que recebe um vetor X de 30 elementos inteiros, por parâmetro, e mostre, dois vetores A e B. O vetor A deve conter os elementos pares de X e o vetor B, os elementos ímpares.
import 'dart:math';

void main() {
  Random p = new Random();
  List<int> x = [];

  for (var i = 0; i < 30; i++) {
    x.add(p.nextInt(30) + 1);
  }

  vetor(vetorA: x);
}

void vetor({required List<int> vetorA}) {
  List<int> A = [];
  List<int> B = [];

  for (var p in vetorA) {
    if (p % 2 == 0) {
      // par
      A.add(p);
    } else {
      // impar
      B.add(p);
    }
  }

  print("VetorA Par == $A ==  par");
  print("VetorB impar == $B == impar");
}

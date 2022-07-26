import 'dart:io';

void main() {
  List<int> vetor = [];
  int menor = 1000000;
  int maior = 0;
  int cont = 1;
  for (int j = 0; j < 100; j++) {
    vetor.add(j);
  }
  vetor.forEach((element) {
    if (element > maior) {
      maior = element;
    }
    if (element < menor) {
      menor = element;
    }
  });
  print(" O maior elemento do vetor é ${maior} ");
  print(" O menor elemento do vetor é ${menor}");
}

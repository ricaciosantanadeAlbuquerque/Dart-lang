import 'dart:io';
  /*  Faça um programa que receba do usuário um vetor com 10 posições. Em seguida deverá ser        exibido o maior 
e o menor elemento do vetor */
void main() {
  List<int> vetor = [];
  int menor = 1000000;
  int maior = 0;
  int cont = 1;
  for (int j = 0; j < 10; j++) {
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

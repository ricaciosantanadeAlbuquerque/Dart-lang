//  Faça um programa que verifique e mostre os números entre 1.000 e 2.000 (inclusive) que, quando divididos por 11 produzam resto igual a 2.
void main() {
  for (var i = 0; i <= 3000; i++) {
    if (i >= 1000 && i <= 2000) {
      print("valor entre 1000 e 2000 ${i}");

      if (i % 11 == 2) {
        print("O valor de $i divido por 11 o resto é 2");
      }
    }
  }
}

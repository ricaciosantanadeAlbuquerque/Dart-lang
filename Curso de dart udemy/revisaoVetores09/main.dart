/**
 *  Ler 2 vetores X e Y de 10 elementos cada um (ocupando as posições de 0 a 9 em cada vetor).
 *  Intercalar os elementos desses 2 vetores formando assim, um novo vetor R de 10 elementos, onde nas
 *  posições pares de R (0,2,4,...,8) estejam os elementos de X e nas posições ímpares (1,3,...,9) os elementos
 *  de Y. Após a geração completa do vetor R, escreva-o
 */
void main() {
  var x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var y = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
  var R = [];

  for (var j = 0; j < 10; j++) {
    if (j % 2 == 0) {
      R.add(x[j]);
    }

    if (j % 2 == 1) {
      R.add(y[j]);
    }
  }
  print(R);
  print(R.length);
}

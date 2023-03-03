/**
 *  Ler oito elementos inteiros em uma matriz unidimensional (A). Construir uma matriz B de 
 *  mesma dimensão com os elementos da matriz A multiplicados por 3. Após, apresente 
 *   os números da matriz B. Exemplo: o elemento B|0] deve ser implicado pelo elemento 
 *  A[0)*3, o elemento B[1] deve ser implicado pelo elemento A[1]*3 e assim por diante, até 
 *  a última posição:

 */
void main() {
  List<int> arrayA = [1, 2, 3, 4, 5, 6, 7, 8];
  List<int> arrayB = [];

  for (var i = 0; i < 8; i++) {
    arrayB.add(arrayA[i] * 3);
  }

  for (var p in arrayB) {
    print(p);
  }
}

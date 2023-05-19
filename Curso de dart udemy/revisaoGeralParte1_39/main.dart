/**
 * Faça um programa que leia duas matrizes A e B de tamanho 3 x 3 e calcule C = A ∗ B.

 */
void main() {
  List<List<int>> A = const [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  List<List<int>> B = const [
    [11, 12, 13],
    [14, 15, 16],
    [17, 18, 19]
  ];

  List<List<int>> C = [];

  for (var linha = 0; linha < A.length; linha++) {
    List<int> c = [];
    for (var coluna = 0; coluna < A.length; coluna++) {
      c.add(A[linha][coluna] * B[linha][coluna]);
    }
    C.add(c);
  }

  print(A);
  print("");
  print(B);
  print("");
  print(C);
}

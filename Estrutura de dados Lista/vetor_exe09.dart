import 'dart:io';
/*8 - Faça um programa que leia duas matrizes A e B de tamanho 3 x 3 e calcule C = A ∗ B.
 */
void main() {
  List<List<int>> A = [];
  List<List<int>> B = [];
  List<List<int>> C = [];
  List<int> num3;
  List<int> num1;
  List<int> num2;
  int cont = 1;
  int cont1 = 2;
  //
  for (int i = 0; i < 3; i++) {
    num1 = [];
    num2 = [];

    for (int j = 0; j < 3; j++) {
      num1.add(cont);
      num2.add(cont1);
      cont++;
      cont1++;
    }
    A.add(num1);
    B.add(num2);
  }
  print(A);
  print(B);
  //lista

  for (int i = 0; i < 3; i++) {
    num3 = [];
    for (int j = 0; j < 3; j++) {
      num3.add(A[i][j] * B[i][j]);
    }
    C.add(num3);
  }
  print(C);
}

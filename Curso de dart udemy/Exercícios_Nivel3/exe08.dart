/**8 - Faça um programa que leia duas matrizes A e B de tamanho 3 x 3 e calcule C = A ∗ B.
 */
import 'dart:io';
import 'dart:math';

void main() {
  List<List<int>> A = [];
  List<List<int>> B = [];
  List<List<int>> C = [];
  List<int> valor1; // declaramos 
  List<int> valor2;

  Random num1 = Random();
  Random num2 = Random();

  for (var i = 0; i < 3; i++) {
    valor1 = []; // inicializamos
    valor2 = [];
    for (var j = 0; j < 3; j++) {
      valor1.add(num1.nextInt(100) + 1);
      valor2.add(num2.nextInt(50) + 1);
    }
    A.add(valor1);
    B.add(valor2);
  }
  print(A);
  print(B);
  int valor = 0;
  List<int> soma;

  for (int i = 0; i < 3; i++) {
    soma = [];
    for (int j = 0; j < 3; j++) {
      valor = A[i][j] * B[i][j];
      soma.add(valor);
    }
    C.add(soma);
  }

  print("\n");
  print(C);
}

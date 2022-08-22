import 'dart:io';
/*1 - Faça um programa que possua um vetor denominado A que armazene 6 números inteiros. O programa deve 
executar os seguintes passos:
(a) Atribua os seguintes valores a esse vetor: 1, 0, 5, -2, -5, 7.
(b) Armazene em uma variável inteira (simples) a soma entre os valores das posições A[0], A[1] e A[5] do vetor e 
mostre na tela esta soma.
(c) Modifique o vetor na posição 4, atribuindo a esta posição o valor 100.
(d) Mostre na tela cada valor do vetor A, um em cada linha.
 */
void main() {
  List<int> A = [1, 0, 5, -2, -5, 7];
  int soma = 0;
  for (int j = 0; j < 6; j++) {
   
    if (j == 0 || j == 1 || j == 5) {
      soma += A[j];
    }
    if (j == 4) {
      A[j] = 100;
    }
  }
  print(
      "=======================XXXXXXXXXXXXXXXX================================");
  for (int j = 0; j < A.length; j++) {
    print(A[j]);
  }
  print("O valor da soma da posição [0] [1] [5] é ${soma}");
}

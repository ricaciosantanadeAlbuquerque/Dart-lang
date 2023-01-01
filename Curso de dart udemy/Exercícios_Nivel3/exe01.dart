/**
 * 1 - Faça um programa que possua um vetor denominado A que armazene 6 números inteiros. O programa deve 
executar os seguintes passos:
(a) Atribua os seguintes valores a esse vetor: 1, 0, 5, -2, -5, 7.
(b) Armazene em uma variável inteira (simples) a soma entre os valores das posições A[0], A[1] e A[5] do vetor e 
mostre na tela esta soma.
(c) Modifique o vetor na posição 4, atribuindo a esta posição o valor 100.
(d) Mostre na tela cada valor do vetor A, um em cada linha.

 */
void main() {
  List<int> A = [1, 0, 5, -2, -5, 7];
  int soma = A[0] + A[1] + A[5];

  print("A soma dos valores do vetor A[0] A[1] A[5] são  ${soma}");
  A[4] = 100;
  print("=======================================================");
  print(A[0]);
  print(A[1]);
  print(A[2]);
  print(A[3]);
  print(A[4]);
  print(A[5]);
  print("======================================================");
}

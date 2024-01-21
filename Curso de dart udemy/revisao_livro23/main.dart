/**
 * Faça um Programa que leia um vetor A com 10 números inteiros, calcule e mostre a soma dos quadrados dos elementos do vetor.
 */
void main() {
  int acumulador = 0;
  List<int> litaA = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var valor in litaA) {
    print('Valor:$valor, valor ao Quadrado:${valor * valor}\n');
    acumulador += valor * valor;
  }
  print('A soma dos valores ao quadrado somados é == $acumulador \n');
}

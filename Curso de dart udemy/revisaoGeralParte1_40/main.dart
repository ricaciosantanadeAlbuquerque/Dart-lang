/**  9 - Faça programa que leia uma matriz 3 x 6 com valores reais.
(a) Imprima a soma de todos os elementos das colunas ímpares.
(b) Imprima a média aritmética dos elementos da segunda e quarta colunas.
(c) Substitua os valores da sexta coluna pela soma dos valores das colunas 1 e 2.
(d) Imprima a matriz modificada.
 * 
 */
void main() {
  int cont = 0;
  double somaImpar = 0;
  double mediaSQ = 0;
  double soma = 0;
  double soma1 = 0;

  List<List<double>> valores = [
    [1.1, 2.2, 3.3, 4.4, 5.5, 6.6],
    [7.7, 8.8, 9.9, 10.10, 11.11, 12.12],
    [13.13, 14.14, 15.15, 16.16, 17.17, 18.18],
  ];
  print("$valores \n");

  for (var linha = 0; linha < valores.length; linha++) {
    for (var coluna = 0; coluna < 6; coluna++) {
      if (coluna % 2 != 0) {
        somaImpar += valores[linha][coluna];
      }

      if (coluna == 1 || coluna == 3) {
        soma1 += valores[linha][coluna];
        cont++;
     
      }

      soma = valores[linha][0] + valores[linha][1];
      valores[linha][5] = soma;
    }
  }
  mediaSQ = soma1 / cont;
  print("A soma de todos os elemento das colunas impares: $somaImpar\n");
  print("A média  aritmética dos elementos da segunda e quarta coluna ${mediaSQ.toStringAsFixed(2)}\n");
  print("${valores}\n");
}

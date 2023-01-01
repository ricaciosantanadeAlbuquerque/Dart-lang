/**
 * 5 - Faça um programa que leia um vetor de 10 posições e verifique se existem valores iguais e os escreva na tela.
 */

void main() {
  List<int> valores = [11, 12, 13, 11, 12, 44, 55, 66, 7, 8]; //0 a 9

  for (var j = 0; j < valores.length - 1; j++) {
    for (int i = j + 1; i < valores.length; i++) {
      if (valores[j] == valores[i]) {
        print("${valores[j]} na posição $j é igual a  ${valores[i]} na posição $i");
      }
    }
  }

/**
 * j é 0, i e j + 1 que no caso é 1, evitando testar o valor do vetor valores[0] com ele mesmo já que os índices j e i, só servem para referenciar um elemento dentro do array valores.
 * j varia de 0 ao tamanho do array -1 que no caso seria posição 8, enquanto i que é j + 1  varia de 1 a 9, assim evitanos testar o valor com ele mesmo. 
 */
}

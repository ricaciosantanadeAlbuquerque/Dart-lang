import 'dart:io';
/*
9 - Faça programa que leia uma matriz 3 x 6 com valores reais.
(a) Imprima a soma de todos os elementos das colunas ímpares.
(b) Imprima a média aritmética dos elementos da segunda e quarta colunas.
(c) Substitua os valores da sexta coluna pela soma dos valores das colunas 1 e 2.
(d) Imprima a matriz modificada */
void main() {
  List<List<int>> vetor = [];
  List<int> list;
  int novoValor;
  int somaImpar = 0;
  int cont = 1;
  for (int i = 0; i < 3; i++) {
    list = []; // 3 posisções
    for (int j = 0; j < 6; j++) {
      list.add(cont); // 6 posições
      cont += 2;
    }
    vetor.add(list);
  }
  print(vetor);
  int media = 0;
  int media1 = 0;
  int soma2 = 0;
  int soma4 = 0;
  int cont1 = 0;
  int cont2 = 0;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 6; j++) {
      if (j % 2 != 0) {
        // é porque é impar
        somaImpar += vetor[i][j];
        novoValor = vetor[i][1] + vetor[i][2];
        vetor[i][5] = novoValor;
      }
      if (j == 1) {
        soma2 += vetor[i][1];
        cont1++;
      }
      if (j == 3) {
        soma4 += vetor[i][3];
        cont2++;
      }
    }
  }
  media = (soma2 / cont1).toInt();
  media1 = (soma4 / cont2).toInt();
  print(vetor);
  print("\n");
  print(media);
  print("\n");
  print(media1);
  print("\n");
  print("Soma impar ${somaImpar}");
}
